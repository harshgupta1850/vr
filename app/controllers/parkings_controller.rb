class ParkingsController < ApplicationController
  def index
    @parkings = Parking.new
  end
  def create
    @parkings = Parking.new(parking_params)

    if @parkings.save
      # Handle successful save, e.g., redirect to another page
      redirect_to "/parkings/new", notice: 'Parking created successfully!'
    else
      # Handle validation errors or other issues
      render :new
    end
  end 
  private

  def parking_params
    params.require(:parking).permit(:entrytime, :exittime, :vehiclenumber, :phonenumber )
  end

  def new
    @parkings = Parking.all
  end
end
