class DestinationsController < ApplicationController
  before_action :set_destination, only: [:show, :edit, :update, :destroy]

  def index
    @destinations = Destination.all
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

    # no need for app/views/restaurants/create.html.erb
    redirect_to destination_path(@destination)
  end

  def update
    @destination = Destination.find(params[:id])
    @destination.update(destination_params)

    # no need for app/views/restaurants/update.html.erb
    redirect_to destination_path(@destination)
  end

  private

  def set_destination
    @restaurant = Destination.find(params[:id])
  end
  def destination_params
    params.require(:destination).permit(:name, :distance)
  end
end
