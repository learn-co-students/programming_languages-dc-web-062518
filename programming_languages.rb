require 'pry'
def reformat_languages(languages)
  # your code here
  new_hash = {}
   languages.each do |style, data|
     data.each do |language, value|
       if !new_hash.include?(language)
        new_hash[language] = {style: [style], type: value[:type]}
       else
         new_hash[language][:style].push(style)
       end
     end
   end
  new_hash
end
