require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/users/sign_up'
      expect(response).to have_http_status(:success)
    end

    it 'should include correct placeholder' do
      get '/'
      expect(response.body).to include('BudgetApp')
    end
  end

  describe 'GET /login' do
    before(:each) do
      get '/users/sign_in'
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'should include correct placeholder' do
      expect(response.body).to include('BudgetApp')
    end
  end
end
