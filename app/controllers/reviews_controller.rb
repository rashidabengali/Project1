class ReviewsController < ApplicationController

  def edit
    @review = Review.find params[:id]
    @restaurant = @review.restaurant
  end

  def update
    review = Review.find params[:id]
    review.update review_params
    redirect_to review.restaurant
  end

  def new
    @restaurant = Restaurant.find params[:restaurant_id]
    @review = Review.new
  end

  def create
    restaurant = Restaurant.find params[:restaurant_id]
    review = restaurant.reviews.create review_params
    # @current_user.reviews << review
    redirect_to review.restaurant
  end

  def destroy
    review = Review.find params[:id]
    review.destroy
    redirect_to review.restaurant
  end

  private
  def review_params
    params.require(:review).permit(:rating, :comment, :restaurant_id)
  end
end
