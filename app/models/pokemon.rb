class Pokemon < ApplicationRecord
  ELEMENTS = %W(Fire Grass Water Electricity)

  belongs_to :user
  has_many :bookings
end
