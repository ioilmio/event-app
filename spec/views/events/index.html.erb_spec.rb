require 'rails_helper'
require 'rspec/rails'
require 'capybara/rspec'

RSpec.describe 'events/index.html.erb', type: :view do
  describe 'get list of events' do
    it 'home' do
      visit '/'
      expect(page).to have_http_status(:success)
      expect(page).to have_text('Home')
    end
  end
end
