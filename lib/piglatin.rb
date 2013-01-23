class PigLatin

  def self.translate(english)
    words = english.split(' ')
    words.map { |w| piglatinize(w) }.join(' ')
  end

  private

  def self.piglatinize(word)
    word[1, word.length-1] << "-" << word[0] << "ay"
  end
end