module Myapp
  class Config
    # TODO 3: Add a @@config_path and @list
    # TODO 3: Add a constructor

    private def save
      File.open(@@config_path, "w") { |f| @list.to_yaml(f) }
    end
  end
end
