require 'rails/all'
require 'simple_form'
require 'simple_form_select2'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[File.expand_path('spec/support/**/*.rb')].each(&method(:require))

RSpec.configure do |config|
  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'

  # Enable filtered runs.
  config.run_all_when_everything_filtered = true
  config.filter_run focus: true
end
