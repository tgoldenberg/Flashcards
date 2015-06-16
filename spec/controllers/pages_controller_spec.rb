require 'rails_helper'

RSpec.describe PagesController, :type => :controller do

  context "GET home" do

    it "doesn't pass variables if user isn't signed in" do
      get :home
      expect(@deck).to eq(nil)
    end

    it 'passes variables if user is signed in' do
      user = User.create(email: "example@gmail.com", password: "password")
      deck = Deck.create(name: "my deck")
      get :home
      session[:user_id] = user.id
      expect(assigns(:decks)).to be_a ActiveRecord::Relation
    end

  end


end
