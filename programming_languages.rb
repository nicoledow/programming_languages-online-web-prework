require "pry"

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

def reformat_languages(languages)
  new_hash = {}
  
  #iterate through original languages hash down to language names
  languages.each do |lang_style, lang_group|
    lang_group.each do |lang, lang_info|
       #for each, check if the lang has already been added to new_hash
       #if it has, add this style to the style array
      if new_hash.has_key?(lang)
        new_hash[lang][:style] << lang_style
      #if not, create new hash for info within new_hash:
      else
        new_hash[lang] = {}
        new_hash[lang][:type] = lang_info[:type]
        new_hash[lang][:style] = []
        new_hash[lang][:style] << lang_style
      end
    end
  end
  
  new_hash
end