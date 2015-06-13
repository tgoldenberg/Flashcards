module ApplicationHelper
  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    else
      nil
    end
  end

  def current_card
    @game.deck.cards[@game.card_idx]
  end


end
