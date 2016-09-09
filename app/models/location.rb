class Location < ActiveRecord::Base
  has_many :location_addresses, dependent: :destroy
  has_many :addresses, through: :location_addresses

  validates :name, presence: true
end
