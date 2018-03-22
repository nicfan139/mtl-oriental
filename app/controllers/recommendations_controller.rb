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

  private

  def recommendation_params
    params.require(:recommendation).permit(:content)
  end
end
