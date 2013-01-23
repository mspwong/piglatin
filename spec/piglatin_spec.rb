require "piglatin"

describe PigLatin do
  it 'translates "Hello" correctly' do
    subject.class.translate("Hello").should == "ello-Hay"
  end

  it 'translates "Hello world" correctly' do
    subject.class.translate("Hello world").should == "ello-Hay orld-way"
  end

  it 'translates "skate" correctly' do
    subject.class.translate("skate").should == "ate-skay"
  end
end