class Gig < ActiveRecord::Base
  belongs_to :location
  has_many :fees

  validates :name, presence: true
  validates :tax_type, presence: true

  validates :location_id, presence: true
end
