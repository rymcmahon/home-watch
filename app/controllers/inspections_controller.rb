class InspectionsController < ApplicationController

  def show
    @inspection = Inspection.find(params[:id])
    @client = Client.find(params[:client_id])
  end

  def index
    @client = Client.find(params[:client_id])
    @inspections = @client.inspections
  end

  def new
    @inspection = Inspection.new(:client => @client)
    @client = Client.find(params[:client_id])
  end

  def edit
    @inspection = Inspection.find(params[:id])
    @client = Client.find(params[:client_id])
  end

  def create
    @client = Client.find(params[:client_id])
    @inspection = Inspection.new(inspection_params)
    if @inspection.save
      redirect_to client_inspection_path(@client, @inspection), notice: "New Inspection Saved!"
    else
      render new_client_inspection_path
    end
  end

  def update
    @client = Client.find(params[:client_id])
    @inspection = Inspection.find(params[:id])
    if @inspection.update(inspection_params)
      redirect_to client_inspection_path(@client, @inspection), notice: "Inspection Updated!"
    else
      render 'edit'
    end
  end

  def destroy
  end

  private

    def inspection_params
      params.require(:inspection).permit(:mail, :front_door, :security_system, :water_main,
      :water_heater, :garage_access_door, :garage_overhead_door, :outdoor_trash, :indoor_trash,
      :breaker_box, :washer, :dryer, :smoke_detectors, :ceiling_fans, :humidistat,
      :thermostat, :cabinets_drawers, :refrigerator, :freezer, :garbage_disposal, :dishwasher,
      :faucets, :toilets, :doors_windows, :ceilings_walls, :screen_doors, :pool, :exterior,
      :pests, :general_cleanliness, :carpet_cleanliness, :window_cleanliness, :patio_cleanliness, :client_id)
    end

end
