require_relative '../../app/middleware/html_minifier'

if Rails.env.production?
  Rails.application.config.middleware.use HtmlMinifier
end
