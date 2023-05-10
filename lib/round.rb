# The Round
# A Round will be the object that processes responses and records guesses. A Round is initialized with a Deck. The idea is that when we start a Round, the current card is the first in the deck (the first in the Deck’s array of Cards). When we make a guess, the guess is recorded, and the next card in the deck becomes the current card.

# The take_turn method is the crux of this problem. The take_turn method takes a string representing the guess. It should create a new Turn object with the appropriate guess and Card. It should store this new Turn, as well as return it from the take_turn method. Also, when the take_turn method is called, the Round should move on to the next card in the deck.

class Round
  attr_reader :deck, :turns, :new_turn, :guess, :number_correct
  def initialize(deck)
    @guess = guess
    @deck = deck
    @turns = []
    @number_correct = 0
    @new_turn = new_turn
  end

  def current_card
    @deck.cards.first
  end

  def take_turn(guess)
    # creates new Turn object
    new_turn = Turn.new(guess, current_card)
    # stores itself
    @turns << new_turn.guess
    # removes after use
    @deck.cards.shift
    #returns itself
    new_turn
  end

  def correct_guesses
   
    @number_correct += 1
    # we have an array of guesses inside turns
    # we have an array of cards with answer
    # answer must equal guess to be << to correct 
    # counter counts number of elements in array

    
  end
end