class Destination < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, uniqueness: true, presence: true

  def self.search(search)
    where("name ILIKE ? OR weather ILIKE ?", "%#{search}%", "%#{search}%")
  end
end
