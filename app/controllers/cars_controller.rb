class CarsController < ApplicationController
  def index
    @cars = Car.where(salon_id: params[:salon_id]).order(:brand).page params[:page]
  end
end