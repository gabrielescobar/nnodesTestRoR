class CarsController < ApplicationController

def index
    @car = Car.all

  end

    def show
      @car = Car.find(params[:id])
      @hash = Gmaps4rails.build_markers(@car) do |car, marker|
        marker.lat car.lat
        marker.lng car.long
        marker.infowindow car.marca + "-" + car.modelo
      end
    end

  def new
     @car = Car.new
  end

  def edit
    @car = Car.find(params[:id])
  end

   def create
         @car = Car.new(cars_params)
          if @car.save
             redirect_to @car
           else
             render 'new'
           end
   end

   def update
     @car = Car.find(params[:id])

     if @car.update(cars_params)
       redirect_to @car
     else
       render 'edit'
     end
   end

   def destroy
       @car = Car.find(params[:id])
       @car.destroy
       redirect_to root_path
     end

   private
     def cars_params
       params.require(:car).permit(:marca, :modelo, :lat, :long)
     end
end
