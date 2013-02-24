require 'rspec'
require File.join(File.expand_path(File.dirname(__FILE__)), %w(.. lib detect_language))

describe DetectLanguage do
  it 'works' do
    expect(true).to eql(true)
  end
end
