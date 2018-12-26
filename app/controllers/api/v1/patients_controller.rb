class Api::V1::PatientsController < ApplicationController
  before_action :current_user, only: [:create, :show, :edit]
  before_action :current_patient, only: [:update, :show, :destroy]

  def index
    @patients = Patient.all
    render json: @patients, status: 200
  end

  def show
    render json: @patient, status: 200
  end

  def create
    @user = current_user
    @patient = @user.patients.create(patient_params)
    render json: @patient, status: 200
  end

  def update
    @patient.update(patient_params)
    render json: @patient, status: 200
  end

  def destroy
    if @patient.destroy
      flash[:message] = "Patient successfully deleted."
      render json: {patientID: @patient.id}  
    else
      flash[:message] = "Patient was deletion was unsuccessful."
    end
  end

  private

  def patient_params
    params.require(:patient).permit(:patient_id, :name, :dob, :user_id, symptom_ids:[], diagnosis_ids:[])
  end

  def current_patient
    @patient = Patient.find_by(id: params[:id])
  end
end