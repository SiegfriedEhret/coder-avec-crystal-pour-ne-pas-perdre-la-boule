require "../structs/*"

module Myapp
  module Commands
    class Add
      def initialize(@config : Config, args : Array(String))
        name = args.find { |el| el.starts_with? "name=" }
        email = args.find { |el| el.starts_with? "email=" }

        if !name.nil? && !email.nil?
          add(name.split("=")[1], email.split("=")[1])
        else
          puts "I need a name and an email!"
        end
      end

      def add(name : String, email : String)
        @config.add_contact Contact.new(name, email)
      end
    end
  end
end
