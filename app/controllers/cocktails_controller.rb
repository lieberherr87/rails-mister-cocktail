class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def edit
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      flash[:notice] = "Cocktail #{@cocktail.name} has been created"
      # flash[:alert] = "Cocktail #{@cocktail.name} has been "
      redirect_to @cocktail, notice: "notice"
    else
      render :new
    end
  end

  def update
    if @cocktail.update(cocktail_params)
      redirect_to @cocktail, notice: 'Cocktail was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_url, notice: 'Cocktail was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cocktail
      @cocktail = Cocktail.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cocktail_params
      params.require(:cocktail).permit(:name, :description, :photo, :photo_cache)
    end
end
