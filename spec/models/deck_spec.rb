require 'rails_helper'


RSpec.describe Deck, :type => :model do
  it 'should have a name' do
    deck = Deck.new
    deck.save
    expect(deck.valid?).to_not be_truthy
  end

  it 'should save if valid' do
  end
end
