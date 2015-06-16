require 'rails_helper'
require 'faker'
require 'pry'

RSpec.describe GamesController, :type => :controller do
  let(:user) { User.create(email: "example@gmail.com", password: "password")}
  let(:deck) { Deck.create(name: "my deck")}
  let(:cards) {
    10.times do
      deck.cards.create(answer: Faker::Lorem.sentence, description: Faker::Lorem.sentence, name: Faker::Name.name, deck_id: deck.id, image_url: Faker::Name.name)
    end
  }
  let(:sample_game) { Game.create(user_id: user.id, deck_id: deck.id)}
  context "POST create" do
    it "it should create a new game when provided params" do
      params = {deck_id: deck.id, user_id: user.id}
      post :create, params
      expect(response).to redirect_to(game_path(Game.last))
    end
  end

  context "GET show" do
    it 'shows a valid game' do
      params = {id: sample_game.id}
      session[:user_id] = sample_game.user_id
      binding.pry
      get :show, params
      expect(assigns(:game)).to be_a Game
    end
  end

  # context "POST guess" do
  #   it 'should pass a valid guess' do
  #     post :guess, params
  #   end
  # end


end
