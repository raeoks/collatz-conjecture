require_relative '../lib/collatz_conjecture'

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
end
