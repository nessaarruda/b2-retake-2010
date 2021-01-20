class Flight < ApplicationRecord
  belongs_to :airline
  has_many :flight_passengers
  has_many :passengers, through: :flight_passengers

  def self.list_flights
    require "pry"; binding.pry
  end
end
