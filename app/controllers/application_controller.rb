class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # Before any action is performed, call the fetch_user method.
  before_action :fetch_doctor

  private

  def fetch_doctor
    # Search for a doctor by their doctor id if we can find one in the session hash.
    if session[:doctor_id].present?
      @current_doctor = Doctor.find_by :id => session[:doctor_id]

      # Clear out the session doctor_id if no doctor is found.
      session[:doctor_id] = nil unless @current_doctor
    end
  end


end
