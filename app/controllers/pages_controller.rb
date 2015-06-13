class PagesController < ApplicationController
  def home
    if session[:user_id]
      @user = User.find(session[:user_id])
      @decks = DefaultDecks.all
    end
  end
end
