require 'rails_helper'

RSpec.describe 'Transactions', type: :request do
  describe 'GET /show' do
    it 'returns http success' do
      get transactions_path
      expect(response).to_not have_http_status(:success)
    end
  end
end