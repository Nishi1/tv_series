class TvSeriesController < ApplicationController
	# GET /tv_series
	def index
    	@tv_series = Tv.includes(:shoot_locations, tv_actors: [:user]).references(:shoot_locations, tv_actors: [:user]).paginate(:page => params[:page],:per_page => RECORD_PER_PAGE).where('users.name LIKE ?', "%#{params['search']}%")	
	end
end
