require 'rails_helper'
require 'rspec/rails'
require 'capybara/rspec'
RSpec.describe 'events/show.html.erb', type: :view do
  it 'get to show events page' do
    visit 'events/show/1'
    expect(page).to have_text('title')
  end
end
