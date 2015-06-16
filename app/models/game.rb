class Game < ActiveRecord::Base
  validates_presence_of :user_id
  validates_presence_of :deck_id
  
  before_create :assign_card_idx
  belongs_to :user
  belongs_to :deck

  def assign_card_idx
    self.card_idx = 0
    self.wrong = 0
    self.right = 0
  end

  def self.current_game_by_id(id)
    self.find(id)
  end

  def correct_answer
    self.card_idx += 1
    self.right += 1
  end

  def wrong_answer
    self.wrong += 1
  end
end
