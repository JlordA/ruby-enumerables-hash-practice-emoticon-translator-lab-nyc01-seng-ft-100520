# require modules here
require 'pry'
require 'yaml'
def load_library(emoticons)
emoticons_hash = YAML.load_file(emoticons)
new_hash = {}
 emoticons_hash.each do |key, value|
 new_hash[key] = {:english => value[0], :japanese => value[1]}
  end
  new_hash
end

def get_japanese_emoticon
  # code goes here
  emoticons_hash = YAML.load_file(emoticons)
end

def get_english_meaning(emoticons, japanese_emoticon)
  # code goes here
  emoticons_hash = load_library(emoticons)
  emoticons_hash.keys.find do |name|
    binding.pry
    if name == emoticons_hash["happy"][:japanese][japanese_emoticon]
      name
    end
  end
end
