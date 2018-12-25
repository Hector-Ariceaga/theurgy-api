class Api::V1::TreatmentsController < ApplicationController
  before_action :current_treatment, only: [:create, :show, :edit]

  def index
    @treatments = Treatment.all 
    render json: @treatments, status: 200
  end

  def show
    render json: @treatment, status: 200
  end

  def create
    @treatment = Treatment.create(treatment_params)
    render json: @treatment, status: 200
  end

  def update
    @treatment.update(diagnosis_params)
    render json: @treatment, status: 200
  end

  def destroy
    if @treatment.destroy
      flash[:message] = "Diagnosis successfully deleted."
      render json: @treatment, status: 200
    else
      flash[:message] = "Diagnosis deletion was unsuccessful."
    end
  end

  private

  def treatment_params
    params.require(:treatment).permit(:name, :patient_id)
  end

  def current_treatment
    @treatment = Treatment.find_by(id: params[:id])
  end
end
