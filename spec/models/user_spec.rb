require 'rails_helper'

RSpec.describe User, type: :model do

  it 'is not valid without an email' do
    user = User.new(email: nil)
    expect(user).to_not be_valid
  end

  it 'is not valid without password' do
    user = User.new(email: 'one@mail.com', password: nil)
    expect(user).to_not be_valid
  end

  it 'is valid with valid attributes' do
    user = User.new(email: 'one@mail.com', password: 'password')
    expect(user).to be_valid
  end

  it 'has not active role' do
    user = User.new(email: 'one@mail.com', password: 'password')
    expect(user.roles).to eq([])
  end

end
