require 'pry'
def reformat_languages(languages)
  new_hash = {}
  languages.each do |key, style|
    style.each do |language, language_style|
      if new_hash == {}
        new_hash[language] = language_style
        new_hash[language][:style] = []
      else
        new_hash[language][:style] << key
      end
    end
  end
  return new_hash
end
