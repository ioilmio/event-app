require 'rails_helper'

RSpec.describe 'events/create.html.erb', type: :view do
  visit 'events/create'
  expect(page).to have_text('Title')
end
