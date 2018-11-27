require "test_helper"
require_relative "../../lib/generators/knock/install_generator"

class InstallGeneratorTest < Rails::Generators::TestCase
    tests Knock::InstallGenerator
    destination File.expand_path("../tmp", File.dirname(__FILE__))
    setup :prepare_destination

    test "Assert all files are properly created" do
        run_generator
        assert_file "config/initializers/knock.rb"
    end
end
