require "yaml"
require "../structs/list"

module Myapp
  class Config
    @@config_path : Path = Path.home / "myapp.yaml"
    property list : List

    def initialize
      if File.exists? @@config_path
        @list = List.from_yaml(File.read(@@config_path))
      else
        @list = List.new

        save
      end
    end

    def add_contact(contact : Contact)
      @list.contacts << contact
      save
    end

    private def save
      File.open(@@config_path, "w") { |f| @list.to_yaml(f) }
    end
  end
end
