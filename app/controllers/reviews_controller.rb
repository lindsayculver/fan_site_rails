class ReviewsController < ApplicationController

  def show
    @gear = Gear.find(params[:gear_id])
    @reviews = Review.find(params[:id])
  end

  #----------------- CREATE ----------------- #

  def new
    @gear = Gear.find(params[:gear_id])
    @review = @gear.reviews.new
  end

  def create
    @gear = Gear.find(params[:gear_id])
    @review = @gear.reviews.new(review_params)
    if @review.save
      redirect_to new_gear_review_path
    else
      render :new
    end
  end

  #----------------- UPDATE ----------------- #


end
