require "yaml"

def load_library(file)
  result = {}
  code = YAML.load_file(file)
  code["get_meaning"] = {}
  code["get_emoticon"] = {}
  
  code.each do |meaning, emoticon|
    
  end
  
  code
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end


# code => { angel: ["O:)", "☜(⌒▽⌒)☞"],angry: [">:(", "ヽ(ｏ`皿′ｏ)ﾉ"],bored: [":O", "(ΘεΘ;)"] }