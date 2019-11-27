class ReviewsController < ApplicationController
  def new
    id = params[:restaurant_id]
    @restaurant = Restaurant.find(id)
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    id = params[:restaurant_id]
    @restaurant = Restaurant.find(id)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      # render 'restaurants/show'  # to render the show page with review errors
      render :new # to render to new review page with errors
    end
  end

  private

  def review_params
    params.require(:review)
          .permit(:content, :rating, :restaurant)
  end
end
