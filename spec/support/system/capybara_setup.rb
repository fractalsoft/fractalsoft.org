# Make server listening on all hosts
Capybara.server_host = '0.0.0.0'
Capybara.server_port = 3001

# Use a hostname accessible from the outside world
Capybara.app_host = "http://#{ENV.fetch('APP_HOST') { `hostname`.strip&.downcase || '0.0.0.0' }}"

# Which domain to use when setting cookies directly in tests.
CAPYBARA_COOKIE_DOMAIN = URI.parse(Capybara.app_host).host.then do |host|
  # If host is a top-level domain
  next host unless host.include?('.')

  ".#{host}"
end

# Usually, especially when using Selenium, developers tend to increase the max wait time.
# With Cuprite, there is no need for that.
# We use a Capybara default value here explicitly.
Capybara.default_max_wait_time = 2

# Normalize whitespaces when using `has_text?` and similar matchers,
# i.e., ignore newlines, trailing spaces, etc.
# That makes tests less dependent on slightly UI changes.
Capybara.default_normalize_ws = true

# Where to store system tests artifacts (e.g. screenshots, downloaded files, etc.).
# It could be useful to be able to configure this path from the outside (e.g., on CI).
# Capybara.save_path = ENV.fetch("CAPYBARA_ARTIFACTS", "./tmp/capybara")

Capybara.singleton_class.prepend(
  Module.new do
    attr_accessor :last_used_session

    def using_session(name, &)
      self.last_used_session = name
      super
    ensure
      self.last_used_session = nil
    end
  end
)

RSpec.configure do |config|
  config.include ActionView::RecordIdentifier, type: :system

  # Make urls in mailers contain the correct server host
  config.around(:each, type: :system) do |ex|
    was_host = Rails.application.default_url_options[:host]
    Rails.application.default_url_options[:host] = Capybara.server_host
    ex.run
    Rails.application.default_url_options[:host] = was_host
  end

  config.before(:each, type: :system) do
    driven_by :rack_test
  end

  config.before(:each, :js, type: :system) do
    # Use JS driver always
    driven_by Capybara.javascript_driver
  end
end
