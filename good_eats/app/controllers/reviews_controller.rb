class ReviewsController < ApplicationController

def index
end

def new
  @review = Review.new
  @restaurant = Restaurant.find(params[:restaurant_id])
end

def show
  @review = Review.find(params[:restaurant_id])
end


def create
  @review = Review.new(review_params)
  @restaurant = Restaurant.find(params[:restaurant_id])
  @review.restaurant_id = params[:restaurant_id]
  @review.save

  redirect_to restaurants_path
end

private
def review_params
  params.require(:review).permit(:body)
end

end
