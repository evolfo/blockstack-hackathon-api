class Api::V1::DoctorsController < ApplicationController

  def index
  	@doctors = Doctor.all
  	render json: @doctors
  end

  def show
  	@doctor = Doctor.find(params[:id])
  	render json: @doctor
  end

  private

  def doctor_params
  	params.permit(:name, :speciality, :location, :years_experience, :board_certifications, :education, :gender, :languages, :img_url )
  end

end
