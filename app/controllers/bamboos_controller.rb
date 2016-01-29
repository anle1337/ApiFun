class BamboosController < ApplicationController

  layout 'with_back_button'

  def index
    # @user = Bamboo.new
    # @user = @user.user_details(40434)

    # @test = Employee.first
    # @test = @test.user_details(40434)

    @person = Employee.first

  end

  def show
    @person = Employee.find(params[:id])
  end

  def create
    
  end

  def update

    @person = Employee.first

    
    if @person.update(bamboo_param)
      @person.save
      redirect_to bamboos_path
      flash["success"] = "#{@person.inspect} and #{bamboo_param}" 
    end
  end

  def edit
    @person = Employee.find(params[:id])
    
  end

  def destroy
  end


private

  def bamboo_param
    params.require(:employee).permit(:firstName, :lastName, :address, :city, :state, :workEmail, :workPhone)
  end

end
