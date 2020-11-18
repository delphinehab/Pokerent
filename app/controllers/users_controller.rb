class UsersController < ApplicationController

  skip_after_action :verify_authorized

  def show
    @user = User.find(params[:id])
    @bookings = Booking.where(user_id: @user.id)
    @pokemons = Pokemon.where(user_id: @user.id)
  end
end
