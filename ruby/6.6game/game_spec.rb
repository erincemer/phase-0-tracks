require_relative "game"

describe WordGame do
  let(:game) {WordGame.new("book")}

  it "finds the index of leters in the word initialized" do

    expect(game.find_index("o")).to eq [1,2]
  end

  it "encodes the word according to word's length" do
    expect(game.encode).to eq "****"
  end

  it "join the letters on the encoded_word array to print" do
    game.encode
    expect(game.join_the_letters).to eq "****"
  end

  it "guesses a letter to see if the word contains it" do
    game.encode
    expect(game.guess("b")).to eq "b***"
  end

  it "decodes the word that it prints the updated the word whether
      the user guesses right or not" do
    game.encode
    game.join_the_letters
    expect(game.decode("o")).to eq "*oo*"
  end




end
