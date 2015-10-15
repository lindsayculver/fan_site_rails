class GearsController < ApplicationController

  def index
    @gears = Gear.all
    if params[:search]
      @gears = Gear.search(params[:search]).order("created_at DESC")
    else
      @gears = Gear.order("created_at DESC")
    end
  end

  def show
    @gear = Gear.find(params[:id])
    @reviews = @gear.reviews.all
  end

  #----------------- CREATE ----------------- #

  def new
    @gear = Gear.new
    @gears = Gear.all
  end

  def create
    @gear = Gear.new(gear_params)
    if @gear.save
      redirect_to new_gear_path
    else
      render :new
    end
  end

  #----------------- UPDATE ----------------- #

  def edit
    @gear = Gear.find(params[:id])
  end

  def update
    @gear = Gear.find(params[:id])
    if @gear.update(gear_params)
      redirect_to new_gear_path
    else
      render :edit
    end
  end


  #----------------- DESTROY ----------------- #

  def destroy
    @gear = Gear.find(params[:id])
    @gear.destroy
    redirect_to new_gear_path
  end

private
  def gear_params
    params.require(:gear).permit(:year, :model, :brand, :category, :description)
  end
end
