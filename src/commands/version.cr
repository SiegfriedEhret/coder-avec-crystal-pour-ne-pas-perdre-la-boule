module Myapp
  module Commands
    class Version
      def self.run
        puts "myapp v#{VERSION}"

        exit
      end
    end
  end
end
