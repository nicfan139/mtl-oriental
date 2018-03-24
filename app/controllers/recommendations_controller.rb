class RecommendationsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @recommendation = Recommendation.new(recommendation_params)
    @recommendation.restaurant = @restaurant
    if @recommendation.save
      respond_to do |format|
        format.html { redirect_to restaurant_path(@restaurant) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'restaurants/show' }
        format.js  # <-- idem
      end
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:restaurant_id])
    @recommendation.restaurant = @restaurant
    @recommendation.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_path(@restaurant), notice: 'Review was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

  def recommendation_params
    params.require(:recommendation).permit(:content)
  end
end
