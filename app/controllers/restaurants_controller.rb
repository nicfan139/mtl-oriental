class RestaurantsController < ApplicationController

  def show
    authorize @restaurant
  end

  def new
    authorize @restaurant
  end

  def create
    authorize @restaurant

    if @restaurant.save
      redirect_to root_path
    else
      render new_restaurant_path
    end
  end

  def edit
    authorize @restaurant
  end

  def update
    authorize @restaurant

    @restaurant.update(restaurant_params)
    redirect_to root_path
  end

  def destroy
    authorize @restaurant

    @restaurant.destroy
    redirect_to root_path
  end

  private

  def article_params
    params.require(:restaurants).permit(:name, :type, :photo)
  end
end
