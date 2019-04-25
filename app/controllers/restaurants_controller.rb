class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @q = Restaurant.ransack(params[:q])
    @restaurants = @q.result(distinct: true) if params[:q]
    @restaurants = @restaurants.sort do |r1, r2|
      r2.likes.count <=> r1.likes.count
    end
  end

  def show
    @restaurant = Restaurant.find params[:id]
  end

  def edit
    @restaurant = Restaurant.find params[:id]
  end

  def update
    restaurant = Restaurant.find params[:id]
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      restaurant.images << req["public_id"]
    end
    restaurant.update restaurant_params
    restaurant.save
    redirect_to restaurant_path(restaurant.id)
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    restaurant = Restaurant.create restaurant_params
    if params[:file].present?
      # Then call Cloudinary's upload method, passing in the file in params
      req = Cloudinary::Uploader.upload(params[:file])
      # Using the public_id allows us to use Cloudinary's powerful image
      # transformation methods.
      restaurant.images << req["public_id"]
      restaurant.save
    end
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
