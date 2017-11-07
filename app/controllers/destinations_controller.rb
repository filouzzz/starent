class DestinationsController < ApplicationController
  before_action :set_destination, only: [:show, :edit, :update, :destroy]
  def index
    @destination = Destination.all
  end

  def show

  end
  def edit
  end


  def new
    @destination = Destination.new
  end

  def create
     @destination = Destination.new(destination_params)
     @destination.save

    # no need for app/views/destinations/create.html.erb
    redirect_to destination_path(@destination)
  end

  def update
    @destination.update(destination_params)

    # no need for app/views/destinations/update.html.erb
    redirect_to destination_path(@destination)
  end

  private

  def set_destination
    @destination = Destination.find(params[:id])
  end
  def destination_params
    params.require(:destination).permit(:name, :distance)
  end
end

