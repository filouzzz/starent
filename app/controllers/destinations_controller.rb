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
    user_id = rand(1..3)
     @destination = Destination.new(destination_params,)
     @destination.user_id = user_id
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
