class Api::V1::TherapiesController < ApplicationController
  before_action :current_therapy, only: [:create, :show, :edit]

  def index
    @therapies = Therapy.all 
    render json: @therapies, status: 200
  end

  def show
    render json: @therapy, status: 200
  end

  def create
    @therapy = Therapy.create(therapy_params)
    render json: @therapy, status: 200
  end

  def update
    @therapy.update(diagnosis_params)
    render json: @therapy, status: 200
  end

  def destroy
    if @therapy.destroy
      flash[:message] = "Diagnosis successfully deleted."
      render json: @therapy, status: 200
    else
      flash[:message] = "Diagnosis deletion was unsuccessful."
    end
  end

  private

  def therapy_params
    params.require(:therapy).permit(:patient_id, :active, :treatment_id)
  end

  def current_therapy
    @therapy = Therapy.find_by(id: params[:id])
  end
end
