class FlightPassenger < ApplicationRecord
  belongs_to :passenger
  belongs_to :flight
end
