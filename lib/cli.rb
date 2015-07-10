require 'clamp'
require 'palindromes'

module Palindromes
  class Cli < Clamp::Command
    subcommand 'find', 'find palindromes in input file...' do
      option ["-o", "--output"], "OUTPUT FILE", "required: Output File", :required => false
      option ["-c", "--chart"], "CHART FILE", "required: Location For Chart Output", :required => false

      parameter "command", "command to run", :attribute_name => :command

      def execute
        Palindromes.run(command, output, chart)
      end
    end
  end
end
