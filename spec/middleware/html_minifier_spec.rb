# frozen_string_literal: false

require 'rails_helper'

RSpec.describe HtmlMinifier do
  context 'when rendering any HTML view' do
    let(:body) do
      [
        "<p>join</p>\n<p>lines</p>",
        '<p>unnecessary</p>    <p>spaces</p>',
        '<p><!-- unnecessary comment -->important content</p>',
        '<script>function log() { var e = 2.7; console.log(e); }</script>'
      ]
    end
    let(:expected) do
      [
        '<p>join</p><p>lines</p>',
        '<p>unnecessary</p><p>spaces</p>',
        '<p>important content</p>',
        '<script>function log() {var e = 2.7;console.log(e);}</script>'
      ]
    end

    it 'returns minified HTML without changing the content' do
      app = ->(_) { [200, { 'Content-Type' => 'text/html' }, body] }
      html_minifier = described_class.new(app)

      expect(html_minifier.call({}).last).to eq(expected)
    end
  end

  context 'when redirecting' do
    let(:body) { [''.freeze] }
    let(:expected) { body }

    it 'returns the empty chunk unchanged' do
      app = ->(_) { [302, { 'Content-Type' => 'text/html' }, body] }
      html_minifier = described_class.new(app)

      expect(html_minifier.call({}).last).to eq(expected)
    end
  end

  context 'when rendering non-HTML view' do
    let(:body) { ["lorem\nipsum"] }
    let(:expected) { body }

    it 'returns the original content unchanged' do
      app = ->(_) { [200, { 'Content-Type' => 'text/plain' }, body] }
      html_minifier = described_class.new(app)

      expect(html_minifier.call({}).last).to eq(expected)
    end
  end

  context 'when HTML includes many comments' do
    let(:body) do
      [
        <<~HTML.chomp
          <html>
            <body>
            <!-- This is a comment -->
            <!-- This is another comment -->
            <!-- This is yet another comment -->
            <!-- This is a comment with a very long string of spaces at the end -->
            <!-- #{' ' * 1000} -->
            </body>
          </html>
        HTML
      ]
    end
    let(:expected) do
      ['<html><body></body></html>']
    end

    it 'returns minified HTML without many comments' do
      app = ->(_) { [200, { 'Content-Type' => 'text/html' }, body] }
      html_minifier = described_class.new(app)

      expect(html_minifier.call({}).last).to eq(expected)
    end
  end
end
