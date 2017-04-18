class String
  define_method(:scrabble) do
    total_score = 0
    score_table = {
      1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
      2 => ["D", "G"],
      3 => ["B", "C", "M", "P"],
      4 => ["F", "H", "V", "W", "Y"],
      5 => ["K"],
      8 => ["J", "X"],
      10 => ["Q", "Z"]}

    # if score_table.fetch(1).include?(self.upcase)
    #   total_score = score.+(1)
    # end

    score_table.each_pair() do |score, letters|
      if letters.include?(self.upcase)
        total_score = total_score.+(score)
      end
    end
    total_score
  end
end
