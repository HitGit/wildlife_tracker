require 'rails_helper'

describe Sighting do
  it { should validate_presence_of :number, :date, :latitude, :longitude }
  it { should belong_to :species}
end