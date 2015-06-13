class GamesController < ApplicationController
  def create
    @deck = Deck.current_deck_by_id(params[:deck_id])
    @game = Game.create(user_id: params[:user_id], deck_id: params[:deck_id])
    redirect_to @game
  end

  def show
    @game = Game.current_game_by_id(params[:id])
    @user = User.find(session[:user_id])
    @card = @game.deck.cards[@game.card_idx]
    @letters = ["a", "b", "c"]
    @cards = [
              ([CardBehavior.all.shuffle] - [@card.answer]).flatten.first.name,
              ([CardBehavior.all.shuffle] - [@card.answer]).flatten.first.name,
              @card.answer
            ].shuffle
  end

  def index
  end

end
