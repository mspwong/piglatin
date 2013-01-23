class PigLatin

  def self.translate(english)
    words = english.split(' ')
    words.map { |w| piglatinize(w) }.join(' ')
  end

  private

  def self.piglatinize(word)
    vowel_index = word.index(/[aeiou]/)
    word[vowel_index, word.length-vowel_index] << "-" << word[0, vowel_index] << "ay"
  end
end