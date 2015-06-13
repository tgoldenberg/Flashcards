class Deck < ActiveRecord::Base
  has_many :games
  has_many :cards
  belongs_to :user

  def self.current_deck_by_id(id)
    self.find(id)
  end
end
