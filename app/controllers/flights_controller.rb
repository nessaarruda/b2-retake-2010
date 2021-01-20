class FlightsController < ApplicationController

  def index
    @flights = Flight.all #this would have list_flights if I had gotten the extension
  end
end
