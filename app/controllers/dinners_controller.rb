class DinnersController < ApplicationController
  def new
    @dinner = Dinner.new
  end

  def create
    @dinner = Dinner.new(dinner_params)
    if @dinner.save
      # TODO -- Flash a success
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def dinner_params
    params.require(:dinner).permit(:dinner_name, :date, :time, :location, :email)
  end
end
