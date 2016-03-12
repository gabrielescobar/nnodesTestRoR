class CarsController < ApplicationController

    def show
      @car = Car.find(params[:id])
    end

  def new
  end


   def create

         @car = Car.new(cars_params)
         @car.save
         redirect_to @car


   end

   private
     def cars_params
       params.require(:cars).permit(:marca, :modelo, :lat, :long)
     end
end
