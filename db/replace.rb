require 'json'
Dir[File.dirname(__FILE__) + "/JsonSeedData/*.json"].each  do |file|
	text = File.read(file)
	new_contents = JSON.pretty_generate(JSON.parse(text.to_s))
	File.open(file, "w") {|file| file.puts new_contents }
end