class BookingsController < ApplicationController
  before_action :authenticate_user!

  def create
    @room = Room.find(params[:room_id])
    @booking = @room.bookings.new(booking_params)
    @booking.user = current_user

    if @booking.save
      flash[:notice] = "Your booking is confirmed."
      redirect_to room_path(@room)
    else
      flash.now[:alert] = "Error while booking. Please check the date"
      render "rooms/show", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
