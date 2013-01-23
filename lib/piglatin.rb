class PigLatin

  def self.translate(english)
    words = english.split(' ')
    words.map { |w| piglatinize(w) }.join(' ')
  end

  def self.revert(piglatin)
    de_tailed = piglatin.chomp('ay')
    de_tailed[de_tailed.length-1] << de_tailed[0, de_tailed.length-2]
  end

  private

  def self.piglatinize(word)
    vowel_index = word.index(/[aeiou]/)
    ending = vowel_index == 0  ?  "way"  : "ay"
    word[vowel_index, word.length-vowel_index] << "-" << word[0, vowel_index] << ending
  end

end