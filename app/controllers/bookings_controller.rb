class BookingsController < ApplicationController
  require 'active_support/all'
  skip_after_action :verify_authorized

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
    @conversation = Conversation.find_by(booking_id: @booking.id)
    @messages = Message.where(conversation_id: @conversation.id)
    @message = Message.new(conversation_id: @conversation.id)
  end

  def create
    @pokemon = Pokemon.find(params[:booking][:pokemon_id])
    date = params[:booking][:date].to_date
    @booking = Booking.new(date: date)
    @booking.pokemon = @pokemon
    @booking.user = current_user
    if @booking.save
      @conversation = Conversation.new
      @conversation.booking = @booking
      @conversation.save
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
