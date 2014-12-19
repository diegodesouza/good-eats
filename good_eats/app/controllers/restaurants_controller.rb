class RestaurantsController < ApplicationController

  # GET /restaurants
  def index
    @restaurants = Restaurant.all
  end

  # GET /restaurants/10
  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = Review.where(restaurant_id: @restaurant[:id])
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # POST /restaurants
  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurants_path
  end

  # GET /restaurants/search
  # def search
  #   @restaurant = Restaurant.search(params[:query])
  # end

  # GET /restaurants/1/edit
  # def edit
  #   @restaurant = Restaurant.find(params[:id])
  # end

  # PATCH /restaurants/1/update
  # def update
  #   @restaurant = Restaurant.find(params[:id])
  #
  #   if @restaurant.update(restaurant_params)
  #     redirect_to @restaurant
  #   else
  #     @restaurant.edit
  #   end
  # end

  # DELETE /restaurants/id/delete
  # def destroy
  #   Restaurant.destroy(params[:id])
  #   redirect_to :action => "index"
  # end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :city, :state, :zipcode, :description, :category)
  end
end
