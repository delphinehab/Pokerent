class PokemonsController < ApplicationController

  def index
    @pokemons = Pokemon.all
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

  def edit
    @pokemon = Pokemon.find(params[:id])
  end

  def update
    @pokemon = Pokemon.find(params[:id])
    @pokemon.update(pokemon_params)
  end

  def show
    @pokemon = Pokemon.find(params[:id])
    @reviews = Review.all
  end

  def destroy 
    @pokemon = Pokemon.find(params[:id])
    @pokemon.destroy
    redirect_to pokemons_path
  end
  
  private

  def pokemon_params
    params.require(:pokemon).permit(:name,:description,:element,:evolution_level)
  end

end
