class DestinationsController < ApplicationController
  before_action :set_destination, only: [:destination_booked,:show, :edit, :update, :destroy]

  def index
    @destinations = Destination.all
    if params[:search]
      if Destination.search(params[:search]).any?
      @destinations = Destination.search(params[:search])
      else
        flash[:notice]= "result not matching"
        render 'index'
      end
    end
  end

 def show

 end

 # def destination_booked
 #  @destination.booked = !@destination.booked
 #  end

 def display_unbooked_destinations
  @destinations = Destination.where(booked: false)
 end


def edit
end


def new
  @destination = Destination.new
end

def create

 @destination = Destination.new(destination_params)
 @destination.user = current_user
  # if @destination.name == Destination.where(name: @destination.name)
  #   render :new
  # else

      if @destination.save
        redirect_to destinations_path
      else
        render :new
      end

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
    params.require(:destination).permit(:name, :price, :description, :planet_type, :weather, :distance, :photo)
  end
end

