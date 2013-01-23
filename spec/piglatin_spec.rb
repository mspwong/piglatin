require "piglatin"

describe PigLatin do
  describe '#translate' do
    it 'translates "Hello" correctly' do
      subject.class.translate("Hello").should == "ello-Hay"
    end

    it 'translates "Hello world" correctly' do
      subject.class.translate("Hello world").should == "ello-Hay orld-way"
    end

    it 'translates "Hello World" correctly' do
      subject.class.translate("Hello World").should == "ello-Hay orld-Way"
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

    it 'reverts "ello-Hay orld-way" results in getting exception' do
      lambda { subject.class.revert("ello-Hay orld-way") }.should raise_error
    end

    it 'reverts "ello-Hay orld-Way" correctly' do
      subject.class.revert("ello-Hay orld-Way").should == "Hello World"
    end

    it 'reverts "ate-skay" correctly' do
      subject.class.revert("ate-skay").should == "skate"
    end

    it 'reverts "awesome-way" results in getting exception' do
      lambda { subject.class.revert("awesome-way") }.should raise_error
    end
  end
end