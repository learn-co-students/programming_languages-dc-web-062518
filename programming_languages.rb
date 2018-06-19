def reformat_languages(languages)
  new_hash = {}
  languages.each do |first_key, hash_of_language_hashes|
    hash_of_language_hashes.each do |language, language_hash|
      if new_hash.has_key?(language)
        new_hash[language][:style] << first_key
      else
        new_hash[language] = {:type => language_hash[:type], :style => []}
        new_hash[language][:style] << first_key
      end
    end
  end
  return new_hash  
end
