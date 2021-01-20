class FlightPassengersController < ApplicationController

  def destroy
    require "pry"; binding.pry
    flight_passenger = FlightPassenger.find_by(flight_id: params[:id], passenger_id: params[:passenger_id])
    flight_passenger.destroy
    redirect_to flights_path
  end
end
