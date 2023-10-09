class Airport < ApplicationRecord
  validates :code, presence: true, length: { minimum: 2, maximum: 4 }, uniqueness: true

  has_many :departing_flights,
    class_name: :Flight,
    foreign_key: :origin,
    dependent: :destroy

  has_many :arriving_flights,
    class_name: :Flight,
    foreign_key: :destination,
    dependent: :destroy
end
