class PigLatin

  def self.translate(english)
    english[1, english.length-1] << "-" << english[0] << "ay"
  end
end