require "yaml"

def load_library(file)
  result = {}
  code = YAML.load_file(file)
  result["get_meaning"] = {}
  result["get_emoticon"] = {}
  code.each do |meaning, emoticons|
    result["get_meaning"][emoticons[1]] = meaning
    result["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  result
end

def get_japanese_emoticon(yamlFile, emoticon)
  result = load_library(yamlFile)
  if result["get_emoticon"].has_key?(emoticon)
    result["get_emoticon"][emoticon]
  else 
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(yamlFile, emoticon)
  result = load_library(yamlFile)
  if result["get_meaning"].has_key?(emoticon)
    result["get_meaning"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end


# code => { angel: ["O:)", "☜(⌒▽⌒)☞"],  angry: [">:(", "ヽ(ｏ`皿′ｏ)ﾉ"],bored: [":O", "(ΘεΘ;)"] }

# code => {
#  :get_meaning => { "☜(⌒▽⌒)☞"=> "angel" ..... },
# :get_emoticon => { "O:)" => "☜(⌒▽⌒)☞" ......}
# }