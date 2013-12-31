class TrackFoodSupply < ActiveRecord::Base
  validates_presence_of :description
  validates_presence_of :quantity
  validates_presence_of :title
  validates_numericality_of :quantity, only_integer: true
end
