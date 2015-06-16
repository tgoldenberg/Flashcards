require 'rails_helper'


RSpec.describe Card, :type => :model do
  let(:card) { Card.new(answer: "my answer", description: "my description", name: 'my name', image_url: 'http://www.google.com', deck_id: 1 ) }
  let(:deck)  { DefaultDeck.create(name: "my deck" )}
  it 'should have an answer' do
    card.answer = nil
    card.save
    expect(card.valid?).to_not be_truthy
  end

  it 'should have a description' do
    card.description = nil
    card.answer = "my answer"
    card.save
    expect(card.valid?).to_not be_truthy
  end

  it 'should have an image url' do
    card.description = "my description"
    card.image_url = nil
    card.save
    expect(card.valid?).to_not be_truthy
  end

  it 'should have a name' do
    card.image_url = "http://www.google.com"
    card.name = nil
    card.save
    expect(card.valid?).to_not be_truthy
  end

  it 'should save if valid' do
    card.name = "my name"
    card.save
    expect(card.valid?).to be_truthy
  end

  it 'should belong to a deck' do
    card.deck_id = deck.id
    card.save
    expect(card.deck.id).to eq(deck.id)
  end

end
