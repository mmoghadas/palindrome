require 'gruff'

module Palindromes
  class Chart
    class << self
      def generate(data, chart_file)
        g = Gruff::Bar.new
        g.title = "histogram"

        c = 0
        data.each do |key, value|
          g.labels.merge( c => key )
          g.data(key, [value])
          c += 1
        end

        g.minimum_value = 0
        g.write(chart_file)
      end
    end
  end
end
