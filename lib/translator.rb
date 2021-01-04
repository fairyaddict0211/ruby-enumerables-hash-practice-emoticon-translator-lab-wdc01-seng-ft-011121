require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
new_hash = {}

  emoticons.each do |key,value|
    new_hash[key] = {}
    new_hash[key][:english] = value[0]
    new_hash[key][:japanese] = value[1]
  end

  new_hash
end

def get_japanese_emoticon
  # code goes here
def get_japanese_emoticon(file_path, emoticon)
  result = load_library(file_path)['get_emoticon'][emoticon]
  result ? result : "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, emoticon)
  result = load_library(file_path)['get_meaning'][emoticon]
  result ? result : "Sorry, that emoticon was not found"
end