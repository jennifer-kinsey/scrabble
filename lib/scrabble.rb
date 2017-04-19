class String
  define_method(:score_letter) do
    total_score = 0
    score_table = {
      1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
      2 => ["D", "G"],
      3 => ["B", "C", "M", "P"],
      4 => ["F", "H", "V", "W", "Y"],
      5 => ["K"],
      8 => ["J", "X"],
      10 => ["Q", "Z"]}

    score_table.each_pair() do |score, letters|
      if letters.include?(self.upcase)
        total_score = total_score.+(score)
      end
    end
    total_score
  end

  define_method(:score_word) do
    word_score = 0;
    word = self.split("");
    word.each() do |letter|
      word_score += letter.score_letter
    end
    word_score

    # self.split("").map{|letter| letter.score_letter}.reduce(:+)

  end
end
