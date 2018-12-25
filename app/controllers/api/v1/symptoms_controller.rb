class Api::V1::SymptomsController < ApplicationController
  before_action :current_symptom, only: [:create, :show, :edit]

  def index
    @symptoms = Symptom.all 
    render json: @symptoms, status: 200
  end

  def show
    render json: @symptom, status: 200
  end

  def create
    @symptom = Symptom.create(symptom_params)
    render json: @symptom, status: 200
  end

  def update
    @symptom.update(diagnosis_params)
    render json: @symptom, status: 200
  end

  def destroy
    if @symptom.destroy
      flash[:message] = "Diagnosis successfully deleted."
      render json: @symptom, status: 200
    else
      flash[:message] = "Diagnosis deletion was unsuccessful."
    end
  end

  private

  def symptom_params
    params.require(:symptom).permit(:name, :patient_id)
  end

  def current_symptom
    @symptom = Symptom.find_by(id: params[:id])
  end
end
