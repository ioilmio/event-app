require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(name: 'user',
             email: 'user@mail.com',
             password: 'password',
             password_confirmation: 'password')
  end

  it 'user has email' do
    expect(subject).to be_valid
  end

  it 'user miss a field' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
