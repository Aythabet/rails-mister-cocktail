class DosesController < ApplicationController
  before_action :set_cocktail, only: [:new, :create, :destroy]
  def new
    @dose = Dose.new
  end

  def create
    if [params[:dose][:ingredient_id]].blank?
      render :new
    else
      @dose = Dose.new(dose_params)
      @dose.cocktail = @cocktail
      if @dose.save
        redirect_to cocktail_path(@cocktail)
      else
        render :new
      end
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.cocktail = @cocktail
    @dose.destroy

    redirect_to cocktail_path(@cocktail)
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
