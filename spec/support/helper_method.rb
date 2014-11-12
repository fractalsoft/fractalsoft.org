# Helper Methods
module HelperMethods
  def rand_text(size = 5)
    ('a'..'z').to_a.sample(size).join
  end
end

RSpec.configure do |config|
  config.include HelperMethods
end
