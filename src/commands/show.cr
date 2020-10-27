require "../lib/config"

module Myapp
  module Commands
    class Show
      def initialize(@config : Config, args : Array(String))
        args.each do |contact_name|
          show contact_name
        end
      end

      private def show(contact_name : String)
        @config.contacts
          .select { |e| e.name.downcase.includes? contact_name.downcase }
          .each do |contact|
            contact.print
          end
      end
    end
  end
end
