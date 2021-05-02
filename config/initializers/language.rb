class Language
  DATA = YAML.load_file('./config/languages.yml').deep_symbolize_keys

  def self.available
    DATA[:available]
  end
end
