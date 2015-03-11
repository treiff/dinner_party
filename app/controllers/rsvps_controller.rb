class RsvpsController < ApplicationController
  def create
    dinner = Dinner.find_by_unique_url(params[:id])
    @rsvp = Rsvp.new(rsvp_params)
    if @rsvp.save
      redirect_to root_path, notice: "RSVP'ed, Thanks!"
    else
      render 'new'
    end
  end

  def edit
    @rsvp = Rsvp.find(params[:id])
  end

  def update
    @rsvp = Rsvp.find(params[:id])
    if @rsvp.update_attributes(rsvp_params)
      redirect_to root_path, notice: "Great, see you there!"
    else
      render 'edit'
    end
  end

  private

  def rsvp_params
    params.require(:rsvp).permit(:name, :dinner_id, :dish)
  end
end
