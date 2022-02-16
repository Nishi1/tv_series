class ShootLocation < ApplicationRecord
	belongs_to :tv, optional: true
	validates :tv_id, presence: { message: 'Tv series is required.' }
	validates :location, presence: { message: 'location is required.' }
	validates :country, presence: { message: 'country is required.' }
end
