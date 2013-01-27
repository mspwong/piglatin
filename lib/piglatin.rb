require 'piglatinable'

class PigLatin
  extend PigLatinable

  def self.translate(english)
    convert english, method(:piglatinize)
  end

  def self.revert(piglatin)
    convert piglatin, method(:englishize)
  end

  private

  def self.convert(phrase, converter)
    phrase.split(' ').map { |word| converter.call(word) }.join(' ')
  end

end