class LikesController < ApplicationController
  before_action :find_restaurant
  before_action :find_like, only: [:destroy]

  def create
    if @current_user.present?
      if already_liked?
        flash[:notice] = "Hey Foodie! You can't like more than once"
      else
        @restaurant.likes.create(user_id: @current_user.id)
      end
      redirect_to restaurant_path(@restaurant)
    else
      redirect_to login_path
    end

  end

  def destroy
    if !(already_liked?)
      flash[:notice] = "Hey Foodie! You can't unlike when there is no like"
    else
      @like.destroy
    end
    redirect_to restaurant_path(@restaurant)
  end

  private

  def already_liked?
    Like.where(user_id: @current_user.id, restaurant_id: params[:restaurant_id]).exists?
  end

  def find_restaurant
    @restaurant = Restaurant.find params[:restaurant_id]
  end

  def find_like
    @like = @restaurant.likes.find params[:id]
  end
end
