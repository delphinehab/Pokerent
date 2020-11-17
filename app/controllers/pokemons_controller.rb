class PokemonsController < ApplicationController

  def index
    @pokemons = Pokemon.all
  end

  def show
    @pokemon = Pokemon.find(params[:id])
    @reviews = Review.all
  end 

  def new
    @pokemon = Pokemon.new
  end
  
  def create
    @pokemon = Pokemon.new(pokemon_params)
    @pokemon.user = current_user
    @pokemon.save
    raise
    redirect_to pokemon_path(@pokemon)
  end 

  private

  def pokemon_params
    params.require(:pokemon).permit(:name,:description,:element,:evolution_level)
  end

end
