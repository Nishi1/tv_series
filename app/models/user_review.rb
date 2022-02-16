class UserReview < ApplicationRecord
	belongs_to :tv, optional: true
end
