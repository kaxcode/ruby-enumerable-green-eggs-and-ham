class GreenEggsAndHam
  def initialize
    @text = File.read('green_eggs_and_ham.txt')
    @words = @text.split(/[ .!?,\n]/).reject { |word| word.empty? }
  end

  # count_of_total_words
  def word_count
    @words.count
  end

  # all_unique_words_sorted
  def sorted_unique_words
    @words.map { |word| word.downcase }.uniq.sort
  end

  # count_of_words_less_than_four_letters
  def number_of_words_shorter_than (num)
    @words.count {|word| word.length < 4}
  end

  # longest_word
  def longest_word
    @words.max { |word| word.length}
  end

  # how_many_stanzas
  def stanzas
    @text.split("\n\n")
  end

  # adventure_mode_line_count_should_not_include_blanks
  def lines
    @text.split("\n").reject {|word| word.empty?}
  end

  def frequency_of_unique_words
    word_uniq = @words.map {|word| word.downcase}.uniq.count
  end
end
