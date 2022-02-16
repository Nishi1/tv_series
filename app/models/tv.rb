class Tv < ApplicationRecord
	has_many :tv_actors
	has_many :user_reviews
	has_many :shoot_locations
	belongs_to :director, optional: true

	accepts_nested_attributes_for :tv_actors, allow_destroy: true
	accepts_nested_attributes_for :shoot_locations, allow_destroy: true

	validates :serial, presence: { message: 'Serial Name is required.' }
	validates :genre, presence: { message: 'Genre Name is required.' }
	validates :no_of_seasons, presence: { message: 'No of seasons is required.' }
	validates :first_release_date, presence: { message: 'Release date is required.' }
	validates :director_id, presence: { message: 'Director is required.' }

	def average_rating
		user_reviews&.average(:rating) || 0
	end  
end
