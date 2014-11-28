class DosesController < ApplicationController

  def new
    # Dose.create(amount:5, cocktail: mojito)
    @dose = Dose.new(cocktail: @cocktail)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredients = Ingredient.all

  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
  end

  def dose_params
    params.require(:dose).permit(:amount, :ingredient_id)
  end
end
