class Flight < ApplicationRecord
  validates :origin, presence: true
  validates :destination, presence: true
  validates :start, presence: true
  validates :duration, presence: true

  belongs_to :origin, class_name: :Airport
  belongs_to :destination, class_name: :Airport
  has_many :bookings
  has_many :passengers, through: :bookings
end
