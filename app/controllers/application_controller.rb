class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :fetch_doctor

    def fetch_doctor
      @current_doctor = Doctor.find_by(id: session[:doctor_id]) if session[:doctor_id]
      session[:doctor_id] = nil unless @current_doctor.present?
    end

    def authorize
      redirect_to root_path unless @current_doctor.present?
    end

end
