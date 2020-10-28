require "option_parser"
require "./commands/*"

module Myapp
  def self.run
    OptionParser.parse do |parser|
      parser.unknown_args do |args, options|
        command = args[0]

        case command
        # TODO 5: Add a when "add"
        when "version"
          Commands::Version.run
        else
          puts "lolwut?"
        end
      end
    end
  end
end