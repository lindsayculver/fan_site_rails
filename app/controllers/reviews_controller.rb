class ReviewsController < ApplicationController

  def show
    @gear = Gear.find(params[:gear_id])
    @review = Review.find(params[:id])
  end

  #----------------- CREATE ----------------- #

  def new
    @gear = Gear.find(params[:gear_id])
    @review = @gear.reviews.new
    render :new
  end

  def create
    @gear = Gear.find(params[:gear_id])
    @review = @gear.reviews.new(review_params)
    if @review.save
      redirect_to gear_path(@review.gear)
    else
      render :new
    end
  end

  #----------------- UPDATE ----------------- #



private
  def review_params
    params.require(:review).permit(:title, :content, :author, :rating)
  end
end
