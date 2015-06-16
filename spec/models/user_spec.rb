require 'rails_helper'


RSpec.describe User, :type => :model do
  let(:user) { User.new }
  it 'should not save with an empty email' do
    user.password = "password"
    user.save
    expect(user.valid?).to eq(false)
  end

  it 'should have a unique email address' do
    user.email = "tom@gmail.com"
    user.password = "password"
    user.save
    user2 = User.create(email: "tom@gmail.com", password: "password")
    expect(user2.valid?).to eq(false)
  end

  it 'should save a valid user' do
    user = User.create(email: "myemail@gmail.com", password: "mypassword")
    expect(user.valid?).to eq(true)
  end

  it 'should have many games' do
    Game.create(deck_id: 1, user_id: user.id )
    expect(user.games).to_not eq(nil)
  end

end
