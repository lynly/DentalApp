class DoctorsController < ApplicationController
  # before_action :check_if_logged_out, only: [:new, :create]
  # before_action :check_if_logged_in, only: [:edit, :update]

  def index
    # Find all doctors
    @all_doctors = Doctor.all
  end

  def show
    # Find one doctor
    @doctor = Doctor.find_by(id: params["id"])
    @all_categories = Category.all
  end

  def new

  end

  def create
  # Handles the submission of a form
    doctor = Doctor.new( doctor_params ) #new - not saved in the database yet
      if doctor.save #if this succeeds at saving to the database
        session[:doctor_id] = doctor.id
        redirect_to doctor_path(doctor) #redirect to the created doctor
      else
        flash[:error] = "We're sorry, information required for one or more fields is missing or incorrect.Please try again."
        redirect_to '/signup' # if creation failed, something was wrong. Go back to the signup page and tryagain.
      end
  end

  def edit
    # Shows a form (with prefilled values)
    @doctor = Doctor.find_by(id: params["id"])
    # @all_categories = Category.all
  end

  def update
    # Handles the submission of a form
    doctor = Doctor.find_by(id: params["id"])
    if params["doctor"]["categories"]
      params["doctor"]["categories"].each do |c|
      if c.present?
        category = Category.find(c)
        doctor.services << category.services
      end
    end
  end
   doctor.update( doctor_params() )
   redirect_to doctor_path(doctor)
 end

  def destroy
    # Deletes a particular record
    doctor = Doctor.find_by(id: params["id"])
    doctor.destroy
    redirect_to doctors_path()
  end

  private
    def doctor_params
      params.require(:doctor).permit(:first_name, :last_name, :gender, :qualification, :specialty, :service_id, :email, :password, :password_confirmation)
    end

    # def check_if_logged_out
    #   if @current_doctor
    #     flash[:error] = "You are already logged in"
    #     redirect_to "/doctors"
    #   end
    # end
    #
    # def check_if_logged_in
    #   unless @current_doctor
    #     flash[:error] = "You need to be logged in for that"
    #     redirect_to "/login"
    #   end
    # end

end
