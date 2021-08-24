class VehiclesController < ApplicationController

  def show

  end

  def index
   @vehicles = Vehicle.all
  end

  def new

  end

  def create
    puts @user
     byebug
     @vehicle = Vehicle.new(params.require(:vehicle).permit(:stock_number, :year, :make, :model, :kind, :mileage, :purchase_price, :recon_budget, :location, :notes, :created_by, :status))
    @vehicle.save
    redirect_to vehicles_path

  end

  def destroy

  end
end
