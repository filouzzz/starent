class DestinationsController < ApplicationController
  before_action :set_destination, only: [:destination_booked,:show, :edit, :update, :destroy]

  def index
   @destinations = Destination.all
 end

 def new
  @destination = Destination.find(params[set_destination])
end

def show
end


def destination_booked
  @destination.booked = true
end

def display_unbooked_destinations
  @destinations = Destination.where(booked: false)
end


def edit
end


def new
  @destination = Destination.new
end

def create
 user_id = current_user
 @destination = Destination.new(destination_params)
 @destination.user_id = user_id
 if @destination.save
  redirect_to destination_path
else
  render :new
end

end

def update
 respond_to do |format|
  if @destination.update(destination_params)
    redirect_to @destination
  else
    render :edit
  end
end

private

def set_destination
  @destination = Destination.find(params[:id])
end
def destination_params
  params.require(:destination).permit(:name, :distance, :planet_type, :price, :weather)
end
end

end
