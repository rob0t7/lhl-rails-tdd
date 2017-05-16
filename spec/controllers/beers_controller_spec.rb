require 'rails_helper'

RSpec.describe BeersController, type: :controller do
  fixtures :all

  describe "GET #index" do
    context 'when no filter params' do
      it 'finds all the beers' do
        get :index
        expect(response).to have_http_status(:success)
      end
    end

    context 'when filtering by brewery' do
      it 'filters the beers by brewery' do
          get :index, params: {brewery_name: breweries(:sawdust).name}
          expect(response).to have_http_status(:success)
      end
    end
  end

end
