require 'palindromes/base'
require 'palindromes/chart'

module Palindromes
  class << self

    def run(input_file, output_file, chart_file)
      data = read_file(input_file)
      chart_file = chart_file ? chart_file : 'histogram.png'

      p = Palindromes::Base::new
      p.find(data)

      output = String.new
      output << "\n-- palindromes --\n"
      output << format(p.histograms).join("\n")
      output << "\n-- histogram --\n"
      output << p.histograms.to_s

      if output_file
        puts "generating output... #{output_file}"
        File.write(output_file, output)
      else
        puts output
      end

      # generate histogram chart
      puts "\n-- histogram chart --\n"
      puts "generating chart... #{chart_file}"
      Palindromes::Chart.generate(p.histograms, chart_file)
    end

    # read file and remove unwanted characters
    def read_file(file)
      File.read(file).downcase.split(/[^a-zA-Z0-9]/).delete_if { |word| word == "" }
    end

    def format(content)
      # group palindrome with the same count together
      grouped = content.group_by { |word, count| count }

      # sort the grouped palindrome by word and print
      output = []
      grouped.sort.reverse.each do |gkey, gvalue|
        gvalue.sort_by { |k,v| k }.each do |word, count|
          output << "#{word} > #{count}"
        end
      end
      output
    end

  end
end
