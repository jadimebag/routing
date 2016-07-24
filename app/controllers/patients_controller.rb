class PatientsController < ApplicationController
  def show
    @patient = Patient.last
  ends

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new (patient_params)

    if @patient.save
      redirect_to @patient, notice: "Added succesfully"
    else
      render action: 'new'
    end

  end

  def patient_params
    params.require(:patient).permit(:name,:surname)
  end
end
