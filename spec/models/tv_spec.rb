require 'rails_helper'

RSpec.describe Tv, type: :model do

  describe 'validations' do
    it 'is not valid without a serial' do
      tv_series = Tv.new(serial: nil)
      expect(tv_series).to_not be_valid
    end

    it 'is not valid without a genre' do
      tv_series = Tv.new(serial: 'Suits', genre: nil)
      expect(tv_series).to_not be_valid
    end

    it 'is not valid without a seasons number' do
      tv_series = Tv.new(serial: 'Suits', genre: 'Drama', no_of_seasons: nil)
      expect(tv_series).to_not be_valid
    end

    it 'is not valid without release date' do
      tv_series = Tv.new(serial: 'Suits', genre: 'Drama', no_of_seasons: 9, first_release_date: nil)
      expect(tv_series).to_not be_valid
    end

    it 'is not valid without director' do
      tv_series = Tv.new(serial: 'Suits', genre: 'Drama', no_of_seasons: 9, first_release_date: '06-23-2011', director_id: nil)
      expect(tv_series).to_not be_valid
    end

    it 'is valid with all data' do
      tv_series = Tv.new(serial: 'Suits', genre: 'Drama', no_of_seasons: 9, first_release_date: '06-23-2011', director_id: 1)
      expect(tv_series).to be_valid
    end


    
  end


end
