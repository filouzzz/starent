class Destination < ApplicationRecord
  has_attachment :photo
  belongs_to :user
  has_many :bookings
  validates :name, uniqueness: true, presence: true

  def self.search(search)
    where("name LIKE ?","%#{search}%")
  end
end
