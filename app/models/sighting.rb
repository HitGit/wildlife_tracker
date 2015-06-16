class Sighting < ActiveRecord::Base
  belongs_to :species
  belongs_to :region

  validates :number, :presence => true
  validates :date, :presence => true
  validates :latitude, :presence => true
  validates :longitude, :presence => true


end