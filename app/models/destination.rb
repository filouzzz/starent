class Destination < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, uniqueness: true, presence: true
end
