class PigLatin

  def self.translate(english)
    words(english).map { |word| piglatinize(word) }.join(' ')
  end

  def self.revert(piglatin)
    words(piglatin).map { |word| englishize(word) }.join(' ')
  end

  private

  def self.words(phrase)
    phrase.split(' ')
  end

  def self.piglatinize(word)
    vowel_index = word.index(/[aeiou]/)
    vowel_index = word.length if vowel_index.nil?
    ending = vowel_index == 0  ?  "way"  : "ay"
    word[vowel_index, word.length-vowel_index] << "-" << word[0, vowel_index] << ending
  end

  def self.englishize(word)
    tokens = word.split('-')
    cannot_tell = tokens[1].start_with?('w')
    raise "Cannot not tell if one of the original words starts with a vowel or with a 'w'" if cannot_tell

    tokens[1].chomp('ay') << tokens[0]
  end

end