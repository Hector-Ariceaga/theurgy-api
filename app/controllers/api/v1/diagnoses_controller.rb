class Api::V1::DiagnosesController < ApplicationController
  before_action :current_diagnosis, only: [:show, :update, :destroy]

  def index
    @diagnoses = Diagnosis.all 
    render json: @diagnoses, status: 200
  end

  def show
    render json: @diagnosis, status: 200
  end
  
  def create
    @diagnosis = Diagnosis.create(diagnosis_params)
    render json: @diagnosis, status: 200
  end

  def update
    @diagnosis.update(diagnosis_params)
    render json: @diagnosis, status: 200
  end

  def destroy
    if @diagnosis.destroy
      flash[:message] = "Diagnosis successfully deleted."
      render json: @diagnosis, status: 200
    else
      flash[:message] = "Diagnosis deletion was unsuccessful."
    end
  end

  private

  def diagnosis_params
    params.require(:diagnosis).permit(:name, :patient_id)
  end

  def current_diagnosis
    @diagnosis = Diagnosis.find_by(id: params[:id])
  end
end
