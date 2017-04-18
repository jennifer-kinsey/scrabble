class String
  define_method(:scrabble) do
    score = 0
    score_table = {1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"] }
    if score_table.fetch(1).include?(self.upcase)
      score = score.+(1)
    end
    score
  end
end
