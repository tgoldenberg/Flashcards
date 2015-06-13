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

  def guess
    @game = Game.current_game_by_id(params[:id])
    @card = @game.deck.cards[@game.card_idx]
    if params[:selection] == @card.answer
      @game.correct_answer
      @messages = ["correct!"]
      @game.save
      if @game.card_idx == @game.deck.cards.size
        @messages = ["Great Job! Try another deck..."]
        redirect_to '/'
      else
        redirect_to '/games/' + @game.id.to_s
      end
    else
      @game.wrong_answer
      @messages = ["try again you suck"]
      @game.save
      redirect_to '/games/' + @game.id.to_s
    end
  end

end
