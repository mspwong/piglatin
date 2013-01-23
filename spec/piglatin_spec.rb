require "piglatin"

describe PigLatin do
  describe '#translate' do
    it 'translates "Hello" correctly' do
      subject.class.translate("Hello").should == "ello-Hay"
    end

    it 'translates "Hello world" correctly' do
      subject.class.translate("Hello world").should == "ello-Hay orld-way"
    end

    it 'translates "skate" correctly' do
      subject.class.translate("skate").should == "ate-skay"
    end

    it 'translate "awesome" correctly' do
      subject.class.translate("awesome").should == "awesome-way"
    end
  end

  describe '#revert' do
    it 'reverts "ello-Hay" correctly' do
      subject.class.revert("ello-Hay").should == "Hello"
    end

    it 'reverts "ello-Hay orld-way" correctly' do
      subject.class.revert("ello-Hay orld-way").should == "Hello world"
    end

    it 'reverts "ate-skay" correctly' do
      subject.class.revert("ate-skay").should == "skate"
    end
  end
end