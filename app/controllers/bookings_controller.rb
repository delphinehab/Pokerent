class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @bookings =
  end

  def create
  end

end
