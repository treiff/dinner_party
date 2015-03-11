class RsvpsController < ApplicationController
  def create
    @rsvp = Rsvp.new(rsvp_params)
    if @rsvp.save
      redirect_to root_path, notice: "RSVP'ed, Thanks!"
    else
      redirect_to root_path, notice: "Sorry, make sure all fields are filled."
    end
  end

  private

  def rsvp_params
    params.require(:rsvp).permit(:name, :dinner_id, :dish)
  end
end
