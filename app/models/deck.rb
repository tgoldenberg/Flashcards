class Deck < ActiveRecord::Base
  validates_presence_of :name
  
  has_many :games
  has_many :cards
  belongs_to :user

  def self.current_deck_by_id(id)
    self.find(id)
  end
end
