class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    raise
    @pokemon = Pokemon.find(param)
  end

end
