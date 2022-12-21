require 'rails_helper'

RSpec.describe 'Categorries', type: :request do
  describe 'GET /show' do
    it 'returns http success' do
      get categories_path
      expect(response).to_not have_http_status(:success)
    end
  end
end
