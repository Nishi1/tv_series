require 'rails_helper'

RSpec.describe ShootLocation, type: :model do
  describe 'validations' do
    it 'is not valid without a tv series' do
      shoot_location = ShootLocation.new(tv_id: nil)
      expect(shoot_location).to_not be_valid
    end

    it 'is not valid without a location' do
      shoot_location = ShootLocation.new(tv_id: 1, location: nil)
      expect(shoot_location).to_not be_valid
    end

    it 'is not valid without a country' do
      shoot_location = ShootLocation.new(tv_id: 1, location: 'New York', country: nil)
      expect(shoot_location).to_not be_valid
    end

    it 'is valid with all data' do
      shoot_location = ShootLocation.new(tv_id: 1, location: 'New York', country: 'US')
      expect(shoot_location).to be_valid
    end    
  end
end
