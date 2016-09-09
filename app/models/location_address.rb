class LocationAddress < ActiveRecord::Base
  belongs_to :location
  belongs_to :address

  validates :location_id, presence: true
  validates :address_id, presence: true
end
