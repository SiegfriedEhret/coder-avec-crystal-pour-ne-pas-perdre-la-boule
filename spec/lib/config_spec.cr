require "../spec_helper"
require "../../src/lib/config"

describe Myapp::Config do
  config = Myapp::Config.new

  describe "#add_contact" do
    it "should work" do
      config.contacts.size.should eq 0

      contact = Myapp::Contact.new("Jane doe", "janedoe@example.com")
      config.add_contact(contact)

      config.contacts.size.should eq 1
    end
  end
end
