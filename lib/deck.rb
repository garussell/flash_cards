class Deck
  attr_reader :cards 

  def initialize(cards)
    @cards = []
  end

  def add_to_deck(card)
    @cards << card
  end

  def count
    @cards.length
  end

  def cards_in_category(category)
    @cards.select { |card| card.category == category }
  end
end