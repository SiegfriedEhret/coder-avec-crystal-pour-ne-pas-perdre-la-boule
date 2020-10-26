require "file_utils"
require "spec"

ENV["MYAPP_PATH"] = File.join(Dir.tempdir, "myapp-spec-#{Random.new.hex(4)}")
FileUtils.mkdir_p(ENV["MYAPP_PATH"])

Spec.after_suite do
  FileUtils.rm_rf ENV["MYAPP_PATH"]
end
