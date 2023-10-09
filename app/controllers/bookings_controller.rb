class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    request.query_parameters[:passengers].to_i.times {@booking.passengers.build}
    @flight = Flight.find(request.query_parameters[:flight_id])
  end

  def create
    @flight = Flight.find(post_params[:flight_id])
    @booking = @flight.bookings.create(post_params)

    redirect_to booking_path(@booking.id)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def post_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :email])
  end
end
