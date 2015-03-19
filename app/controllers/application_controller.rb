class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_rsvp_user

  def current_rsvp_user
    current_rsvp_user ||= cookies[:current_rsvp_id] && Rsvp.find_by(id: cookies[:current_rsvp_id])
  end
end
