class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
  end

  def create
  end

  def show
    @booking = Booking.find(params[:pokemon_id])
  end

end
