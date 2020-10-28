require "yaml"
require "./contact"

module Myapp
  struct List
    include YAML::Serializable
    property contacts : Array(Contact)

    def initialize
      @contacts = Array(Contact).new
    end
  end
end
