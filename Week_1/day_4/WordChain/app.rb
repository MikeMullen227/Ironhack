require_relative("lib/word_chain.rb")
require("ruby-dictionary")
the_dictionary = Dictionary.from_file("/usr/share/dict/words")
# puts the_dictionary.exis ts?("ford")


my_chain = WordChain.new(the_dictionary)


puts ""

my_chain.find_chain("cat", "dog")

my_chain.find_chain("farm", "ship")

