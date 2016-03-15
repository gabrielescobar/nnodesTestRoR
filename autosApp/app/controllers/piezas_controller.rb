class PiezasController < ApplicationController

  def show
    @car = Car.find(params[:car_id])
    @pieza = @car.piezas.find(params[:id])
  end

  def create
    @car = Car.find(params[:car_id])
    @pieza = @car.piezas.create(pieza_params)
    redirect_to car_path(@car)
  end

  def edit
    @car = Car.find(params[:car_id])
    @pieza = @car.piezas.find(params[:id])
  end

  def update
    @car = Car.find(params[:car_id])
    @pieza = @car.piezas.find(params[:id])
    if @pieza.update(pieza_params)
      redirect_to @car
    else
      render 'edit'
    end
  end
  def destroy
    @car = Car.find(params[:car_id])
    @pieza = @car.piezas.find(params[:id])
    @pieza.destroy
    redirect_to car_path(@car)
  end

  private
  def pieza_params
    params.require(:pieza).permit(:nombre, :cantidad)
  end

end
