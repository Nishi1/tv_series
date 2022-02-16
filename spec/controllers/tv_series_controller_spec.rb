require 'rails_helper'

RSpec.describe TvSeriesController, type: :controller do
  describe 'GET /tvs (GET index)' do
	  it 'It will return list of tv series' do
	    get :index
	    expect(response.status).to eq 200
	  end    
  end
end
