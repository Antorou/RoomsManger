class HotelsController < ApplicationController
  before_action :set_hotel, only: [:show, :edit, :update, :destroy]

  def index
    @hotels = Hotel.all
  end

  def show
    @rooms = @hotel.rooms
  end

  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = Hotel.new(hotel_params)
    if @hotel.save
      redirect_to hotel_path(@hotel), notice: "Created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @hotel.update(hotel_params)
      redirect_to hotel_path(@hotel), notice: "Updated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @hotel = Hotel.find(params[:id])
    @hotel.destroy
    redirect_to hotels_path, notice: "Deleted"
  end

  private

  def set_hotel
    @hotel = Hotel.find(params[:id])
  end

  def hotel_params
    params.require(:hotel).permit(:name, :address)
  end
end
