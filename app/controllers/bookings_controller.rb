class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @bookings =
  end

  def create
  end

  def show
    @booking = Booking.find(params[:id])
  end

end
