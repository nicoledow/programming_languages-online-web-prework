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

=begin
def reformat_languages(languages)
  new_hash = {}
  
  #iterate down to language, and set each to a key in the new new_hash
  #for each lang in the new hash, create a :type key
  #iterate down to "type" level in original hash and add key-val pair to new hash at appropriate level
  #add :style key to each lang in new hash (set as an empty array?)
  #iterate through top level of original array, if includes lang, << that type to type arr in new hash
  
  languages.each do |lang_style, lang|
    lang.each do |name, type|
      new_hash[:name] = name
      new_hash[lang][:type] = type
    end
  end
  
  
  new_hash
end

reformat_languages(languages)
=end

def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |lang_style, language|
    language.each do |name, lang_type|
      new_hash[name] ||= lang_type
      new_hash[name][:style]= []
      new_hash[name][:style] << lang_style
    end
  end
  
  new_hash
end
