class ChargesController < ApplicationController
	layout 'with_back_button'

	def new

	end

	def create
	@amount = 50000

		customer = Stripe::Customer.create(:email => params[:stripeEmail],
										   :source => params[:stripeToken]
										)
		charge = Stripe::Charge.create(:customer => customer.id,
									   :amount => @amount,
									   :description => 'Rails Stripe Customer',
									   :currency => 'usd'
									)
	begin
		rescue Stripe::CardError => e
		flash[:error] = e.message
		redirect_to complete_path
	end

		redirect_to new_charge_path
		flash[:success] = "Thanks for paying me $500 fake dollars!"
		
	end

private
	def stripe_params
		params.permit(:tripeEmail, :stripeToken)
	end
end
