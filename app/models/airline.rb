class Airline < ApplicationRecord
  has_many :flights
  has_many :passengers, through: :flights

  def list_passengers
    passengers.order(name: :desc).distinct.pluck(:name)
  end
end
