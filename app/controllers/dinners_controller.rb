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

  def edit
    @dinner = Dinner.find_by_unique_url(params[:id])
  end

  def update
    @dinner = Dinner.find_by_unique_url(params[:id])
    if @dinner.update_attributes(dinner_params)
      flash[:notice] = "Updated successfully"
      redirect_to root_path
    else
      flash.now[:error] = "Something went wrong"
      render 'edit'
    end
  end

  private

  def dinner_params
    params.require(:dinner).permit(:name, :date, :time, :location, :email, :unique_url, guests_attributes:
                                  [:name, :id])
  end
end
