class DinnersController < ApplicationController
  def new
    @dinner = Dinner.new
  end

  def create
    @dinner = Dinner.new(dinner_params)
    if @dinner.save
      redirect_to root_path, notice: "Here's your link copy and send to friends: #{@dinner.custom_url}"
    else
      render 'new'
    end
  end

  def edit
    @dinner = Dinner.find_by_unique_url(params[:id])
  end

  def update
    @dinner = Dinner.find_by_unique_url(params[:id])
    if @dinner.update_attributes(dinner_params)
      redirect_to root_path, notice: "Great, see you there!"
    else
      render 'edit'
    end
  end

  private

  def dinner_params
    params.require(:dinner).permit(:name, :date, :time, :location, :email, :unique_url, guests_attributes:
                                  [:name, :id], courses_attributes: [:name, :id])
  end
end
