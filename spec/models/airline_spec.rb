require 'rails_helper'

RSpec.describe Airline, type: :model do
  describe 'relationships' do
    it { should have_many :flights }
  end
  describe 'instance methods' do
    before :each do
      @airline_1 = Airline.create!(name: "American Airlines")
      @airline_2 = Airline.create!(name: "Frontier")

      @flight_1 = @airline_1.flights.create!(number: 123, date: "05/26/2020", departure_city: "Denver", arrival_city: "San Diego")
      @flight_2 = @airline_1.flights.create!(number: 124, date: "05/27/2020", departure_city: "New York", arrival_city: "LA")
      @flight_3 = @airline_2.flights.create!(number: 125, date: "05/28/2020", departure_city: "Boston", arrival_city: "Portland")

      @passenger_1 = Passenger.create!(name: "Tom Hanks", age: 52)
      @passenger_2 = Passenger.create!(name: "Bob Marlin", age: 68)
      @passenger_3 = Passenger.create!(name: "Brad Pitte", age: 50)

      FlightPassenger.create!(flight_id: @flight_1.id, passenger_id: @passenger_1.id)
      FlightPassenger.create!(flight_id: @flight_1.id, passenger_id: @passenger_2.id)
      FlightPassenger.create!(flight_id: @flight_2.id, passenger_id: @passenger_1.id)
    end
    it 'lists unique passengers' do
      expect(@airline_1.list_passengers).to eq([@passenger_1.name, @passenger_2.name])
    end
  end
end
