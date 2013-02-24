#encoding: utf-8
require 'rspec'
require File.join(File.expand_path(File.dirname(__FILE__)), %w(.. lib detect_language))

describe DetectLanguage do
  subject { DetectLanguage.new }

  its(:languages) { should == %w(english french gaelic german) }

  context 'detect' do
    it 'knows english' do
      expect(subject.detect("hello, how are you going?")).to eql('english')
    end

    it 'knows french' do
      expect(subject.detect("Ceci pourrait expliquer une guerre dans un contexte")).to eql('french')
    end

    it 'knows gaelic' do
      expect(subject.detect("Ar thaobh na Fearsaide, arís")).to eql('gaelic')
    end

    it 'knows german' do
      expect(subject.detect("Im August 1939 schlossen Deutschland und die Sowjetunion")).to eql('german')
    end
  end
end
