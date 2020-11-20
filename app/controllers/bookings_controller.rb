class BookingsController < ApplicationController
  require 'active_support/all'
  skip_after_action :verify_authorized

  def index
    @bookings = Booking.all
  end

  def new
    @already_booked = []
    @pokemon = Pokemon.find(params[:pokemon_id])
    @pokemon.bookings.all.each do |booked|
      @already_booked << booked.date
    end
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
    @pokemon = Pokemon.find(@booking.pokemon_id)
    @conversation = Conversation.find_by(booking_id: @booking.id)
    @messages = Message.where(conversation_id: @conversation.id)
    @message = Message.new(conversation_id: @conversation.id)
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def create
    @pokemon = Pokemon.find(params[:booking][:pokemon_id])
    params[:booking][:date].split(",").each do |date|
      date.to_date
      @booking = Booking.new(date: date)
      @booking.pokemon = @pokemon
      @booking.user = current_user
      @booking.save
      @conversation = Conversation.new
      @conversation.booking = @booking
      @conversation.save
      end
      if @booking.save
        redirect_to user_path(@booking.user)
      else
        @booking = Booking.new
        render :new
    end

    def destroy
      @booking = Booking.find(params[:id])
      @booking.destroy
      redirect_to user_path(@booking.user)
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :status)
  end
end
