class RoomsController < ApplicationController
  def index
    @rooms = Room.includes(:hotel).all
  end

  def show
    @room = Room.find(params[:id])
    @booking = Booking.new
  end
end
