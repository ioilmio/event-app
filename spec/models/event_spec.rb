require 'rails_helper'

RSpec.describe Event, type: :model do
  subject do
    described_class.new(
      id: 1,
      title: 'party',
      description: 'cool party',
      location: 'Catania',
      date: '17/12/2020',
      creator_id: 1
    )
  end

  it ' is not valid without a title' do
    subject.title = nil
    expect(subject).to_not be_valid
  end
end
