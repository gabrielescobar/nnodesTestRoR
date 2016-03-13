class PiezasController < ApplicationController

  def create
    @car = Car.find(params[:car_id])
    @pieza = @car.piezas.create(pieza_params)
    redirect_to car_path(@car)
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
