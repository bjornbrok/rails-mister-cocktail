class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    cocktail = Cocktail.new(cocktail_params)
    cocktail.save
    redirect_to cocktails_path
  end

  private

  # example
  # params:
  # {
  #   cocktail: {
  #     name: "Tequilla Sunrise"
  #   }
  # }
  def cocktails_params
    params.require(:cocktail).permit(:name)
  end
end