class InspectionsController < ApplicationController

  def show
    @inspection = Inspection.find(params[:id])
    @client = Client.find(params[:client_id])
  end

  def index
    @inspections = Inspection.all
  end

  def new
    @inspection = Inspection.new(:client => @client)
    @client = Client.find(params[:client_id])
  end

  def edit
    @inspection = Inspection.find(params[:id])
  end

  def create
    @client = Client.find(params[:client_id])
    @inspection = Inspection.new(inspection_params)
    if @inspection.save
      redirect_to client_inspection_path(@client, @inspection), notice: "New Inscpection Saved!"
    else
      render new_client_inspection_path
    end
  end

  def update
  end

  def destroy
  end

  private

    def inspection_params
      params.require(:inspection).permit(:mail, :front_door)
    end

end
