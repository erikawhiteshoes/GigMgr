class Gig < ActiveRecord::Base
  belongs_to :location

  validates :name, presence: true
  validates :tax_type, presence: true

  validates :location_id, presence: true
end
