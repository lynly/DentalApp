class DoctorsController < ApplicationController

  before_action :check_if_logged_out, only: [:new, :create]
  before_action :check_if_logged_in, only: [:edit, :update]

  def index
    # Find all doctors
    @all_doctors = Doctor.all
  end

  def show
    # Find one doctor
    @doctor = Doctor.find_by(id: params["id"])
  end

  def new
    # Shows a form
    @doctor = Doctor.new
    @all_categories = Category.all
  end

  def create
    # Handles the submission of a form
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      session[:doctor_id] = @doctor.id
      redirect_to doctor_path(@doctor)
    else
      redirect_to '/signup'
    end
  end

  def edit
    # Shows a form (with prefilled values)
    @doctor = Doctor.find_by(id: params["id"])
    @all_categories = Category.all

  end

  def update
    # Handles the submission of a form
    doctor = Doctor.find_by(id: params["id"])
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
      params.require(:doctor).permit(:first_name, :last_name, :email, :password, :password_confirmation, :gender, :qualification, :specialty, :service_id)
    end

    def check_if_logged_out
        if @current_doctor
          flash[:error] = "You are already logged in"
          redirect_to "/doctors"
        end
      end

      def check_if_logged_in
        unless @current_doctor
          flash[:error] = "You need to be logged in for that"
          redirect_to "/login"
        end
      end

end
