class Turn
  attr_reader :guess, :card, :correct, :feedback
  
  def initialize(guess, card)
    @guess = guess
    @card = card
    @correct = correct
  end

  def correct?
    return @correct = true if @guess == card.answer
    false
  end

  def feedback
    if correct? == true 
      "Correct!" 
    else
      "Incorrect."
    end
  end
end