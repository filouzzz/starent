class BookingsController < ApplicationController
  before_action :set_destination
  before_action :set_booking ,only:[:show, :destroy]
  # before_action :set_user, only: [:index, :create]


  def new
    @booking = Booking.new
  end

  def create
    @user = current_user
    @booking = Booking.new(booking_params)
    @booking.user = @user
    @booking.destination = @destination
    if @booking.save!
      @destination.booked = !@destination.booked
      @destination.save
      redirect_to destinations_path
    else
      render :new
    end
  end



  def show
  end

  def destroy
    @booking.destroy
  end

  def index
    @bookings = Booking.where(user: @user_id)
  end


  private

  def set_destination
    @destination = Destination.find(params[:destination_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
  def booking_params
    params.require(:booking).permit(:end_date, :start_date)

  end

end
