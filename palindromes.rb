#!/usr/bin/ruby

require 'gruff'

class Palindrome

  attr_reader :palindromes, :histograms

  # search for palindromes
  def find(data)
    @palindromes = data.select do |word|
      palindrome?(word.downcase)
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

class Chart

  def self.generate(data)
    g = Gruff::Bar.new
    g.title = "histogram"

    c = 0
    data.each do |key, value|
      g.labels.merge( c => key )
      g.data(key, [value])
      c += 1
    end

    g.minimum_value = 0
    g.write('histogram.png')
  end

end

module Runner

  def self.run
    input_file = ARGV[0]
    abort "USAGE: ruby palindromes.rb input.txt" if input_file.nil?
    data = read_file(input_file)

    p = Palindrome.new
    p.find(data)

    # output palindromes
    puts "-- palindromes --"
    puts format(p.histograms)

    # output histogram
    puts "\n-- histogram --"
    puts p.histograms

    # generate histogram chart
    puts "\n-- histogram chart --"
    puts "generating chart... ./histogram.png"
    Chart.generate(p.histograms)
  end

  # read file and remove unwanted characters
  def self.read_file(file)
    File.read(file).split(/[^a-zA-Z]/).delete_if { |word| word == "" }
  end

  def self.format(content)
    # group palindrome with the same count together
    grouped = content.group_by { |word, count| count }

    # sort the grouped palindrome by word and print
    output = []
    grouped.sort.reverse.each do |gkey, gvalue|
      gvalue.sort_by { |k,v| k.downcase }.each do |word, count|
        output << "#{word} > #{count}"
      end
    end
    output
  end

end

Runner.run
