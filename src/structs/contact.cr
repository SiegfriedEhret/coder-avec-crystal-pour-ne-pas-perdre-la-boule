require "yaml"

module Myapp
  struct Contact
    include YAML::Serializable
    property name : String
    property email : String

    def initialize(@name : String, @email : String)
    end

    def print
      puts "#{@name}: #{@email}"
    end
  end
end
