module Palindromes
  class Base
    attr_reader :palindromes, :histograms

    # search for palindromes
    def find(data)
      @palindromes = data.select do |word|
        palindrome?(word)
      end
      histogram
    end

    private

    # to determine palindrome word must be eq to its reverse
    def palindrome?(word)
      word == word.reverse
    end

    # get histogram
    def histogram
      @histograms = Hash.new(0)
      @palindromes.each { |word| @histograms[word] += 1 }
    end

  end
end
