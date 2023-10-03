RSpec.configure do |config|
  config.filter_run :focus
  config.order = :random
  config.profile_examples = true
  config.run_all_when_everything_filtered = true
end
