class SessionsController < ApplicationController
  def new
  end

  def create
    email = params["email"]
    password = params["password"]

    doctor = Doctor.find_by(email: email)
    # If the doctor exists and you provided the right password
    if doctor.present? && doctor.authenticate(password)

      session[:doctor_id] = doctor.id
      redirect_to "/doctors"

    else
      flash[:login_error] = "The password or email was incorrect"
      # Show the login form again (potentially with a temporary message)
      render :new # Show the new form
    end
  end

  def destroy
    session[:doctor_id] = nil
    redirect_to '/login'
  end

end
