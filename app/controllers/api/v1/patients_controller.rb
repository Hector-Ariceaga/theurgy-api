class Api::V1::PatientsController < ApplicationController
  def index
    @patients = Patient.all
    render json: @patients, status: 200
  end

  def create
  end

  def destroy
  end

  private

  def patient_params
  end
end