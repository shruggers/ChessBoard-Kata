# Ruby 1.9.2 issue
$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__) + "/.."))

Autotest.add_discovery { "rspec2" }
Autotest.add_discovery { "kata" }
