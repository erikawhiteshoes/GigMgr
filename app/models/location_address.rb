class LocationAddress < ActiveRecord::Base
  belongs_to :location
  belongs_to :address
end
