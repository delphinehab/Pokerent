class Pokemon < ApplicationRecord
  ELEMENTS = %W(fire grass water electricity)
  LEVELS = [1, 2, 3]

  belongs_to :user
  has_many :bookings, dependent: :destroy
end
