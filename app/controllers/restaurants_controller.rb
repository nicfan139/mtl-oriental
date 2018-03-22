class RestaurantsController < ApplicationController

  def show
    @restaurant = Restaurant.find(params[:id])
    @admin = current_user.admin
    # authorize @restaurant

    @recommendation = Recommendation.new

    @marker = {
        lat: @restaurant.latitude,
        lng: @restaurant.longitude
      }
  end

  def new
    @restaurant = Restaurant.new
    # authorize @restaurant
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    # authorize @restaurant
    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to root_path, notice: 'Restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant }
      else
        format.html { render :new }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    # authorize @restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    redirect_to root_path
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Restaurant was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :category, :address, :district, :photo)
  end
end
