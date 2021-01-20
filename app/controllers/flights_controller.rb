class FlightsController < ApplicationController

  def index
    @flights = Flight.list_flights
  end
end
