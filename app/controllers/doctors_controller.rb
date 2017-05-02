class DoctorsController < ApplicationController
  def index
    # Find all doctors
    @all_doctors = Doctor.all
  end

  def show
    # Find one doctor
    @doctor = Doctor.find_by(id: params["id"])
    # raise "hell"
  end

  def new
    # Shows a form
    @doctor = Doctor.new
  end

  def create
    # Handles the submission of a form
    doctor = Doctor.create( doctor_params() )
    redirect_to doctor_path(doctor)
  end

  def edit
    # Shows a form (with prefilled values)
    @doctor = Doctor.find_by(id: params["id"])
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
      params.require(:doctor).permit(:first_name, :last_name, :gender, :qualification, :specialty)
    end

end
