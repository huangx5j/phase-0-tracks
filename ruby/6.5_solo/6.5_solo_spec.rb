require relative '6.5_solo'

describe GuessLetter do
  let(:guessletter) { GuessLetter.new("moo") }

  it "checks # of guesses" do
    expect(GuessGame.gusses_left).to eq 6
  end

  it "checks initial # of guesses" do
    expect(GuessGame.count).to eq 0
  end

  it "checks initial display of word" do
    expect(GuessGame.display).to eq "___"
  end

end