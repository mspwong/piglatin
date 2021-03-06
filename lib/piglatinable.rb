module PigLatinable

  def piglatinize(word)
    vowel_index = word.index(/[aeiou]/)
    vowel_index = word.length if vowel_index.nil?
    ending = vowel_index == 0 ? "way" : "ay"
    word[vowel_index, word.length-vowel_index] << "-" << word[0, vowel_index] << ending
  end

  def englishize(word)
    tokens = word.split('-')

    cannot_tell = tokens[1].start_with?('w')
    raise "Cannot not tell if one of the original words starts with a vowel or with a 'w'" if cannot_tell

    tokens[1].chomp('ay') << tokens[0]
  end

end