class TvActor < ApplicationRecord
	belongs_to :tv, optional: true
	belongs_to :user, optional: true
	delegate :name, to: :user
	validates :tv_id, presence: { message: 'Tv series is required.' }
	validates :user_id, presence: { message: 'Actor is required.' }
end
