class HtmlMinifier
  REGEXES = [
    # Join lines
    [/[\r\n]+/, ''],

    # Remove whitespace between tags
    [/>\s+</, '><'],

    # Remove comments
    [/<!--(.|\s)*?-->/, ''],

    # Remove whitespace in inline JavaScript
    [/;\s+/, ';'],
    [/{\s+/, '{']
  ].freeze

  def initialize(app)
    @app = app
  end

  def call(env)
    # Call the underlying application, return a standard Rack response
    status, headers, response = @app.call(env)

    # Make sure we don't process CSS or JavaScript
    compress(response) if headers['Content-Type']&.include? 'text/html'

    # Return the new Rack response
    [status, headers, response]
  end

  private

  def compress(response)
    response.each do |chunk|
      REGEXES.each do |regex, substitute|
        chunk.gsub! regex, substitute
      end
    end
  end
end
