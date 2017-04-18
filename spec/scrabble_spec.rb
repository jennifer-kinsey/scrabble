require('rspec')
require('scrabble')

describe("String#scrabble") do
  it("returns a scrabble score for a letter") do
    expect("a".score_word()).to(eq(1))
  end
  it("returns a scrabble score for any given letter") do
    expect("j".score_word()).to(eq(8))
  end

  it("returns a scrabble score for a word") do
    expect("cat".score_word()).to(eq(5))
  end
end
