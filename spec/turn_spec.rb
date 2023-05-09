require './lib/turn'
require './lib/card'

RSpec.describe Turn do
  it 'exists' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    
    expect(card).to be_instance_of(Card)
  end

  it 'exists' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
  
    expect(turn).to be_instance_of(Turn)
  end

  it 'can give feedback on a guess' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)

    turn.guess

    expect(turn.guess).to eq("Juneau")
    expect(turn.correct?).to be true
    expect(turn.feedback).to eq("Correct!")
  end

  it 'can give appropriate feedback' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Saturn", card)

    expect(turn.correct?).to be false
    expect(turn.feedback).to eq("Incorrect.")
  end
end