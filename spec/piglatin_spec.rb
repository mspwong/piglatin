require "piglatin"

describe PigLatin do
  it 'translates "Hello" correctly' do
    subject.class.translate("Hello").should == "ello-Hay"
  end
end