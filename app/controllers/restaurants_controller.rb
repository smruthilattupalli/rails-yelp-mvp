class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurant.new
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
    id = params[:id]
    @restaurant = Restaurant.find(id)
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    # Unless @restaurant.valid?, #save will return false,
    # and @restaurant is not persisted.
    # TODO: present the form again with error messages.
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant)
          .permit(:name, :address, :phone_number, :category, :reviews)
  end
end
