class CarsController < ApplicationController
  def new
    @cars = Car.all
    @car = Car.new
  end

  def create
    @car = Car.new(create_params)
    @car.save
    redirect_to new_car_path
  end

  private
  def create_params
    params.require(:car).permit(:name)
  end
end
