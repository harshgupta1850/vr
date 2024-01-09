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
  def edit
    @registervehicles = Registervehicle.find(params[:id])
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

  def update
    @registervehicles = Registervehicle.find(params[:id])
    if @registervehicles.update(vehicle_params)
      redirect_to registervehicle_path , notice: 'Vehicle updated successfully'
    else
      render :edit
    end
  end
  def destroy
    @registervehicles = Registervehicle.find(params[:id])
    @registervehicles.destroy
    redirect_to "/registervehicles", notice: 'Post deleted successfully'
  end
 
  private
  def vehicle_params
    params.require(:registervehicle).permit(:name, :address, :vehiclenumber, :phonenumber )
  end
  
    
end
