class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @restaurants = Restaurant.all
    @random_restaurant = @restaurants.sample

    @markers = @restaurants.map do |restaurant| {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        infoWindow: { content: render_to_string(partial: "/restaurants/map_box", locals: { restaurant: restaurant }) }
      }
    end
  end
end
