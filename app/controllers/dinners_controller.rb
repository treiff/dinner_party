class DinnersController < ApplicationController
  def new
    @dinner = Dinner.new
  end

  def create
    @dinner = Dinner.new(dinner_params)
    if @dinner.save
      redirect_to root_path, notice: "Here's your link copy and send to friends: #{custom_url(@dinner)}"
    else
      render 'new'
    end
  end

  def show
    @dinner = Dinner.find_by_slug(params[:id])
    @rsvp = Rsvp.new(dinner: @dinner)
  end

  private

  def custom_url(dinner)
    dinner_url(dinner)
  end

  def dinner_params
    params.require(:dinner).permit(:name, :date, :time, :location, :email, :slug)
  end
end


