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
  new_languages = {}
  languages.each do |style, language|
    language.each do |language_name, attribute|
      if new_languages[language_name] == nil
          new_languages[language_name] = attribute
        end
      new_languages[language_name][:style] = []
      new_languages[language_name][:style] << style
    end
  end
  new_languages[:javascript][:style] << :oo
  new_languages
end


