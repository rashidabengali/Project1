class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @q = Restaurant.ransack(params[:q])
    @restaurants = @q.result(distinct: true)
  end

  def show
    @restaurant = Restaurant.find params[:id]
  end

  def edit
    @restaurant = Restaurant.find params[:id]
  end

  def update
    restaurant = Restaurant.find params[:id]
    restaurant.update restaurant_params
    redirect_to restaurant_path(restaurant.id)
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    restaurant = Restaurant.create restaurant_params
    redirect_to restaurants_path
  end

  def destroy
    restaurant = Restaurant.find params[:id]
    restaurant.destroy
    redirect_to restaurants_path
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :location, :specialities, :image, :cuisine_id)
  end
end
