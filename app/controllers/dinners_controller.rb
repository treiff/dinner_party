class DinnersController < ApplicationController
  def new
    @dinner = Dinner.new
  end

  def create
    @dinner = Dinner.new(dinner_params)
    if @dinner.save
      flash[:notice] = "Copy your link and send to friends: #{@dinner.custom_url}"
      redirect_to root_path
    else
      flash.now[:error] = "Please complete all fields"
      render 'new'
    end
  end

  def show
    @dinner = Dinner.find_by_unique_url(params[:id])
  end

  private

  def dinner_params
    params.require(:dinner).permit(:dinner_name, :date, :time, :location, :email, :unique_url)
  end
end
