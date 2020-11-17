class BookingsController < ApplicationController
  require 'active_support/all'

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @pokemon = Pokemon.find(params[:booking][:pokemon_id])
    date = params[:booking][:date].to_date
    @booking = Booking.new(date: date)
    @booking.pokemon = @pokemon
    @booking.user = current_user
    if @booking.save!
      redirect_to user_path(@booking.user)
    else
      @booking = Booking.new
      render
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:date)
  end
end
