require 'rails_helper'

RSpec.describe 'Attendances', type: :request do
  describe 'GET /new' do
    it 'returns http success' do
      get '/attendance/new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /create' do
    it 'returns http success' do
      get '/attendance/create'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /destroy' do
    it 'returns http success' do
      get '/attendance/destroy'
      expect(response).to have_http_status(:success)
    end
  end
end
