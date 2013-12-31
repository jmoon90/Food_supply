require 'spec_helper'

describe TrackFoodSupply do
  it { should validate_presence_of :title }
  it { should validate_presence_of :description }
  it { should validate_presence_of :quantity }
  it { should validate_numericality_of(:quantity).only_integer }
end
