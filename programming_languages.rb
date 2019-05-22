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
    language.each do |name, type|
      if new_languages[name] == nil
          new_languages[name] = type
      end
      new_languages[name][:style] = []
      new_languages[name][:style] << style
    end
  end
  new_languages[:javascript][:style] << :oo
  new_languages
end
