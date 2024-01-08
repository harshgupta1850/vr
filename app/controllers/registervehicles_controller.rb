class RegistervehiclesController < ApplicationController
  def index
    @registervehicles = Registervehicle.all
  end
  def show
    @registervehicles = Registervehicle.find(params[:id])
  end  
  def new
    @registervehicles = Registervehicle.new
  end
  def create
    @registervehicles = Registervehicle.new(vehicle_params)

    if @registervehicles.save
      # Handle successful save, e.g., redirect to another page
      redirect_to "/registervehicles", notice: 'Vehilce created successfully!'
    else
      # Handle validation errors or other issues
      render :new
    end
  end 
  private

  def vehicle_params
    params.require(:registervehicle).permit(:name, :address, :vehiclenumber, :phonenumber )
  end

end
