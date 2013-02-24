#encoding: utf-8

require 'babel'

class DetectLanguage
  LANG_PATH = File.join(File.expand_path(File.dirname(__FILE__)), %w(.. lang))

  def initialize
    languages.each do |language|
      learn(language)
    end
  end

  def detect(string)
    string.language
  end

  def languages
    @languages ||= language_files('*').map do |language_file|
      language = File.basename(language_file)
      language.split('.').first.downcase
    end.uniq.sort
  end

  private

  def learn(language)
    language_files("#{language}.*").each do |file|
      Babel.learn(language, IO.read(file))
    end
  end

  def language_files(pattern)
    Dir[File.join(LANG_PATH, pattern)]
  end
end
