require "piglatin"

describe PigLatin do
  describe '::translate' do
    it 'translates simple single word correctly' do
      subject.class.translate("Hello").should == "ello-Hay"
    end

    it 'translates multiple words correctly' do
      subject.class.translate("Hello world").should == "ello-Hay orld-way"
    end

    it 'translates multiple words with extra spaces correctly' do
      subject.class.translate("  Hello      world  ").should == "ello-Hay orld-way"
    end

    it 'translates multiple words start case correctly' do
      subject.class.translate("Hello World").should == "ello-Hay orld-Way"
    end

    it 'translates "word starting multiple consonants" correctly' do
      subject.class.translate("skate").should == "ate-skay"
    end

    it 'translate "word staring with vowel" correctly' do
      subject.class.translate("awesome").should == "awesome-way"
    end

    it 'translate "ay" correctly' do
      subject.class.translate("ay").should == "ay-way"
    end

    it 'translate "way" correctly' do
      subject.class.translate("way").should == "ay-way"
    end

    it 'translate "voweless word" correctly' do
      subject.class.translate("tsk").should == "-tskay"
    end
  end

  describe '::revert' do
    it 'reverts simple word correctly' do
      subject.class.revert("ello-Hay").should == "Hello"
    end

    it 'reverts multiple words correctly' do
      subject.class.revert("ello-Hay orld-Way").should == "Hello World"
    end

    it 'reverts word staring with multiple consonants correctly' do
      subject.class.revert("ate-skay").should == "skate"
    end

    it 'reverts voweless word correctly' do
      subject.class.revert("-tskay").should == "tsk"
    end

    describe 'cannot resolve original' do
      it 'raises exception when cannot tell if original is "Hello world" or "Hello orld"' do
        lambda { subject.class.revert("ello-Hay orld-way") }.should raise_error
      end

      it 'raises exception when cannot tell if original is "awesome" or "wawesome"' do
        lambda { subject.class.revert("awesome-way") }.should raise_error
      end

      it 'raises exception when cannot tell if original is "ay" or "way"' do
        lambda { subject.class.revert("ay-way") }.should raise_error
      end
    end
  end
end