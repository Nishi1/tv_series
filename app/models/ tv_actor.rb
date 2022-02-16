class TvActor < ApplicationRecord
	belongs_to :tv, optional: true
end
