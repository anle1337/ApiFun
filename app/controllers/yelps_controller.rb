class YelpsController < ApplicationController
	layout 'with_back_button'

  def index
  	@yelpz = Yelper.first 
    @yelpz = @yelpz.yelp_search.businesses if @yelpz.present?
  end

  def create
  end

  def show
  end

  def update
    @yelpz = Yelper.first || Yelper.new

    if @yelpz.update(yelper_params)
      redirect_to "/yelpers"
      flash[:success] = "Search parameters submitted successfully! They were #{@yelpz.inspect}"
    else 
      @errors = @yelpz.errors.full_messages
      @yelpz = nil
      render :index
    end
  end

  def edit
  end

private
  def yelper_params
    params.require(:yelper).permit(:term, :address, :city, :state, :limit, :sort)
  end
end
