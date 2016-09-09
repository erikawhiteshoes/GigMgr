class Address < ActiveRecord::Base
  has_many :location_addresses, dependent: :destroy
  has_many :addresses, through: :location_addresses

  validates :street_1, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true, length: { minimum: 5 }

end
