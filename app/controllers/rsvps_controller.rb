class RsvpsController < ApplicationController
  def create
    dinner = Dinner.find_by_slug(params[:dinner_id])
    rsvp = Rsvp.new(rsvp_params)
    if rsvp.save
      cookies[:current_rsvp_id] = rsvp.id
      redirect_to dinner_path(dinner), notice: "RSVP'ed, Thanks!"
    else
      redirect_to root_path, notice: "Sorry, make sure all fields are filled."
    end
  end

  def show

  end

  def edit
    dinner = Dinner.find_by_slug(params[:dinner_id])
    @rsvp = dinner.rsvps.find(params[:id])
  end

  def update
    dinner = Dinner.find_by_slug(params[:dinner_id])
    rsvp = dinner.rsvps.find(params[:id])

    if rsvp.update_attributes(rsvp_params)
      redirect_to dinner_path(dinner), notice: "RSVP updated successfully"
    else
      redirect_to root_path, notice: "Something went wrong"
    end
  end

  def destroy
    dinner = Dinner.find_by_slug(params[:dinner_id])
    dinner.rsvps.find(params[:id]).destroy
    cookies.delete :current_rsvp_id
    flash[:success] = "RSVP deleted"
    redirect_to dinner_path(dinner)
  end

  private

  def rsvp_params
    params.require(:rsvp).permit(:name, :dinner_id, :dish)
  end
end
