class PokemonsController < ApplicationController

  def index
    @pokemons = policy_scope(Pokemon)
  end

  def new
    @pokemon = Pokemon.new
    authorize @pokemon
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    authorize @pokemon
    @pokemon.user = current_user
    if @pokemon.save
      redirect_to pokemon_path(@pokemon)
    else
      render :new
    end
  end

  def edit
    @pokemon = Pokemon.find(params[:id])
    authorize @pokemon
  end

  def update
    @pokemon = Pokemon.find(params[:id])
    authorize @pokemon
    @pokemon.update(pokemon_params)
  end

  def show
    @pokemon = Pokemon.find(params[:id])
    authorize @pokemon
    @reviews = Review.all
  end

  def destroy
    @pokemon = Pokemon.find(params[:id])
    authorize @pokemon
    @pokemon.destroy
    redirect_to pokemons_path
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:name, :description, :element, :evolution_level)
  end
end
