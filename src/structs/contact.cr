require "yaml"

module Myapp
  struct Contact
    include YAML::Serializable
    property name : String
    property email : String

    def initialize(@name : String, @email : String)
    end

    # TODO 3: Add a print method to display the details for a contact
  end
end
