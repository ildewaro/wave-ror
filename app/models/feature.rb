class Feature < ApplicationRecord
  has_many :comments
  validates :external_id, presence: true, uniqueness: true
  validates :magnitude, :place, :mag_type, :latitude, :longitude, presence: true
  validates :magnitude, numericality: { in: -1.0..10.0 }
  validates :latitude, numericality: { in: -90.0..90.0 }
  validates :longitude, numericality: { in: -180.0..180.0 }
  
end
