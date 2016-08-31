class Address < ActiveRecord::Base
  has_many :location_addresses
  has_many :addresses, through: :location_addresses
end
