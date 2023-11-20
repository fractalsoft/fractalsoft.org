require 'spec_helper'
require 'handlers/markdown_handler'

RSpec.describe Handlers::MarkdownHandler do
  describe '#call' do
    it 'invokes Markdown one time' do
      handler = described_class.new
      markdown = instance_double(Markdown)
      body = 'body'
      template = 'template'
      allow(Markdown).to receive(:new).with(body).and_return(markdown)
      allow(markdown).to receive(:to_html).and_return(body)

      handler.call(template, body)

      expect(markdown).to have_received(:to_html).once
    end
  end
end
