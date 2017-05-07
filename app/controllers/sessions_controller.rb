class SessionsController < ApplicationController

  def new
   # This is the action for doctor login. The view will have the login form template.
   end

   def create
   # This is the action to which the login form post request is posted. It will add the user's id to the sessions hash, which will be used for authentication and authorization throughout the session.
     doctor = Doctor.find_by :email => params[:email]
     if doctor.present? && doctor.authenticate(params[:password])
       # If a doctor record with the entered in the form is present AND the doctor is authenticated (using bcrypt's authenticate method and the password entered in the form), store their id in the session hash and redirect them to the root path.
       sessions[:doctor_id] = doctor.id
       flash[:notice] = "Login successful!"
       redirect_to show_doctors_path(doctor)
     else
       # If the doctor cannot be authenticated, redirect them to the login_path.
       flash[:error] = "Login failed!"
       redirect_to login_path
     end
   end

   # This is the action to which the doctor sign-out delete request is posted.
   def destroy
     sessions[:doctor_id] = nil
     redirect_to root_path
   end

  end
