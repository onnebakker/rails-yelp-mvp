class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show ]

  def index
    @restaurants = Restaurant.all
    @name = "Restaurants"
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def set_restaurants
    @restaurant = restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :phone_number, :category, :rating)
  end

end
