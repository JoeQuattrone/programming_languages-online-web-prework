require 'pry'
=begin
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}
=end


def reformat_languages(languages)
  new_hash = {}
  
    languages.each do |style, values|
      values.each do |language, type|
        type.each do |type_key, type_value|
        new_hash[language] ||= {}

        new_hash[language]= type
        new_hash[language][:style] ||= []
        new_hash[language][:style].push(style)
      end
    end
  end
  new_hash
  binding.pry
end










=begin
def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style, language|
    language.each do |lang, type|
      
      if new_hash[lang]
        new_hash[lang][:style] << style
      else
        new_hash[lang] = type
        new_hash[lang][:style] = [style]
      end      
    end
  end
  new_hash
end
=end








