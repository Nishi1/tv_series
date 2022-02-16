require 'rails_helper'

RSpec.describe TvActor, type: :model do
  describe 'validations' do
    it 'is not valid without a tv series' do
      tv_actor = TvActor.new(tv_id: nil)
      expect(tv_actor).to_not be_valid
    end

    it 'is not valid without a location' do
      tv_actor = TvActor.new(tv_id: 1, user_id: nil)
      expect(tv_actor).to_not be_valid
    end

    it 'is valid with all data' do
      tv_actor = TvActor.new(tv_id: 1, user_id: 2)
      expect(tv_actor).to be_valid
    end    
  end
end
