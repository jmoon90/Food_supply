class TrackFoodSuppliesController < ApplicationController
  def index
    @tfss = TrackFoodSupply.all
  end

  def new
    @tfs = TrackFoodSupply.new
  end

  def create
    @tfs = TrackFoodSupply.new(tfs_params)

    if @tfs.save
      flash[:notice] = 'Success'
      redirect_to track_food_supplies_path
    else
      render :new
    end
  end

  private

  def tfs_params
    params.require(:track_food_supply).permit(:title, :description, :quantity)
  end
end
