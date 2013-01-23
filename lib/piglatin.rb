class PigLatin

  def self.translate(english)
    words = english.split(' ')
    words.map { |w| piglatinize(w) }.join(' ')
  end

  private

  def self.piglatinize(word)
    vowel_index = word.index(/[aeiou]/)
    ending = vowel_index == 0  ?  "way"  : "ay"
    word[vowel_index, word.length-vowel_index] << "-" << word[0, vowel_index] << ending
  end
  
end