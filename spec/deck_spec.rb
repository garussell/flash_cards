require './lib/card' 
require './lib/deck'

RSpec.describe Card do

  it 'exists' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    expect(card_1).to be_instance_of(Card)
    expect(card_2).to be_instance_of(Card)
    expect(card_3).to be_instance_of(Card)
  end

  it 'stores cards in an array and has no cards when created' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    deck = Deck.new(card_1)

    expect(deck.cards).to be_empty
  end

  it 'creates a deck of cards' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    deck.add_to_deck(card_1)
    deck.add_to_deck(card_2)
    deck.add_to_deck(card_3)

    expect(deck.count).to be(3)
  end

  it 'can identify different categories' do
    card_4 = Card.new("Where exactly is the north pole?", "It latitude is 90 degrees north", :Geography)
    card_5 = Card.new("How far away is the moon?", "238,900 mi from Earth", :STEM)
    cards = [card_4, card_5]
    deck = Deck.new(cards)

    deck.add_to_deck(card_4)
    deck.add_to_deck(card_5)
   
    expect(deck.cards_in_category(:STEM)).to contain_exactly(card_5)
    expect(deck.cards_in_category(:Geography)).to contain_exactly(card_4)
    expect(deck.cards_in_category("Pop Culture")).to be_empty
  end
end





    