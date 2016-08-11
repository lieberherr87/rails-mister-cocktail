class DosesController < ApplicationController
  before_action :find_cocktail

  def index
    @dose = Dose.all
  end

  def new
    @dose = Dose.new
  end

  def create
    dose = @cocktail.doses.build(dose_params)
    if dose.save
      redirect_to cocktail_path(@cocktail)
    else
      @dose = Dose.new
      render :new
    end
  end

private

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end
end
