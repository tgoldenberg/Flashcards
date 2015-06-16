class Card < ActiveRecord::Base
  validates_presence_of :name, :description, :answer, :image_url, :deck_id
  belongs_to :deck
end
