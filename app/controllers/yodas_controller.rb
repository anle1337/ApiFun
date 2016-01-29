class YodasController < ApplicationController
	layout 'with_back_button'
  def index
  	@yoda = YodaTalk.first
  	@yoda = @yoda.yoda_translate(@yoda.sentence)


  end

  def create
  	@string = YodaTalk.first
  	@string = @string.update(yoda_params)

  	redirect_to yodas_path
  end

  def show
  end

  def edit
  end

private
	def yoda_params
		params.require(:yoda_talk).permit(:sentence)
	end
end
