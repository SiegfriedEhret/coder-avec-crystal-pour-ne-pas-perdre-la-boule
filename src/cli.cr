require "option_parser"
require "./commands/*"
require "./lib/config"

module Myapp
  def self.run
    OptionParser.parse do |parser|
      parser.unknown_args do |args, options|
        command = args[0]
        config = Config.new

        case command
        when "add"
          Commands::Add.new(config, args[1..-1])
          # TODO 4: Add a when "show"
        when "version"
          Commands::Version.run
        else
          puts "lolwut?"
        end
      end
    end
  end
end
