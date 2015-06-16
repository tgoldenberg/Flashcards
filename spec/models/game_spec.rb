require 'rails_helper'


RSpec.describe Game, :type => :model do
  let(:user) { User.create(email: "example@gmail.com", password: "password") }
  let(:game) { Game.new }
  let(:deck) { Deck.create(name: "my deck")}

  it 'should not save without a user' do
    game.deck_id = 1
    game.save
    expect(game.valid?).to eq(false)
  end

  it 'should have a deck' do
    game.user_id = 1
    game.deck_id = nil
    game.save
    expect(game.valid?).to eq(false)
  end

  it 'it should belong to a user' do
    game.user_id = user.id
    game.save
    expect(game.user).to eq(user)
  end
  #
  it 'it should belong to a deck' do
    game.deck_id = deck.id
    game.save
    expect(game.deck).to eq(deck)
  end
end
