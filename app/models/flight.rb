class Flight < ApplicationRecord
  belongs_to :airline
  has_many :flight_passengers
  has_many :passengers, through: :flight_passengers

  # def self.list_flights #so close. I got it to return passengers in order but I needed flights
  #   self.joins(:passengers).select('flights.*').group(:passengers).order(:passengers).count
  # end
end
