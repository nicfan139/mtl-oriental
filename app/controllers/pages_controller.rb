class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @restaurants = Restaurant.all

    @random_restaurant = @restaurants.sample
  end
end
