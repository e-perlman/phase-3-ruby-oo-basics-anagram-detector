require 'pry'
class Anagram
    def initialize(word)
        @word=word
    end
    def match(anagrams)
        sorted=anagrams.map {|word| word.sort}
        .filter do |word|
            word.size==@word.size
        end
        .filter do |word|
            word.include?@word
        end

    end
end
poo=Anagram.new("listen")

