class VehiclesController < ApplicationController
  before_action :set_vehicle, only: %i[  destroy ]

  def show
    @vehicles = Vehicle.all
  end

  def index
    @vehicles = Vehicle.all
  end

  def new
  
  end

  def create
    @vehicle = Vehicle.new(params.require(:vehicle).permit(:stock_number, :year, :make, :model, :kind, :mileage, :purchase_price, :recon_budget, :location, :notes, :created_by, :status))
    @vehicle.save
    redirect_to vehicles_path
  end

  def edit
      @vehicle = Vehicle.find(params[:id])
  end

  def update
      respond_to do |format|
        @vehicle = Vehicle.find(params[:id])
      if  @vehicle.update(params.require(:vehicle).permit(:stock_number, :year, :make, :model, :kind, :mileage, :purchase_price, :recon_budget, :location, :notes, :updated_by))
        format.html { redirect_to vehicles_path, notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: vehicles_path }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  

  def destroy
    @vehicle.destroy
    
    respond_to do |format|
      format.html { redirect_to vehicles_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_vehicle
    
      @vehicle = Vehicle.find(params[:id])
      
    end
end
