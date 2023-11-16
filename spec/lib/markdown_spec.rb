require 'spec_helper'
require 'markdown'

RSpec.describe Markdown do
  describe '#to_html' do
    it 'returns the HTML code that corresponds to the important text in Markdown' do
      important_text_in_markdown = '**Hello** world'
      expected_result_in_html = "<p><strong>Hello</strong> world</p>\n"
      markdown = described_class.new(important_text_in_markdown)

      expect(markdown.to_html).to eq(expected_result_in_html)
    end

    it 'returns the HTML code that corresponds to the emphasized text in Markdown' do
      emphasized_text_in_markdown = 'Hello *world*'
      expected_result_in_html = "<p>Hello <em>world</em></p>\n"
      markdown = described_class.new(emphasized_text_in_markdown)

      expect(markdown.to_html).to eq(expected_result_in_html)
    end

    it 'returns the HTML code that corresponds to the striked text in Markdown' do
      strikethrough_in_markdown = 'Hello ~~World~~'
      expected_result_in_html = "<p>Hello <del>World</del></p>\n"
      markdown = described_class.new(strikethrough_in_markdown)

      expect(markdown.to_html).to eq(expected_result_in_html)
    end

    it 'returns the HTML code the corresponds to the text containing quotation marks in Markdown' do
      input = "My name is 'Bond, James Bond'"
      expected_result_in_html = "<p>My name is &#39;Bond, James Bond&#39;</p>\n"
      markdown = described_class.new(input)

      expect(markdown.to_html).to eq(expected_result_in_html)
    end

    it 'returns the HTML code that corresponds to the inline code in Markdown' do
      inline_code_in_markdown = 'This is `inline code`'
      expected_result_in_html = "<p>This is <code>inline code</code></p>\n"
      markdown = described_class.new(inline_code_in_markdown)

      expect(markdown.to_html).to eq(expected_result_in_html)
    end

    it 'returns the HTML code that corresponds to the block code in Markdown' do
      block_code_in_markdown = <<~BLOCK_CODE
        ```ruby
        puts 'Hello world'
        ```
      BLOCK_CODE
      expected_result_in_html = <<~HTML
        <pre><code class="ruby">puts &#39;Hello world&#39;
        </code></pre>
      HTML
      markdown = described_class.new(block_code_in_markdown)

      expect(markdown.to_html).to eq(expected_result_in_html)
    end

    it 'returns the HTML code that corresponds to the header in Markdown' do
      header_in_markdown = '# The most important heading'
      markdown = described_class.new(header_in_markdown)

      expect(markdown.to_html).to eq("<h1>The most important heading</h1>\n")
    end

    it 'returns the HTML code that corresponds to the link in Markdown' do
      link_in_markdown = 'This is the [FractalSoft](https://fractalsoft.org/)'
      expected_result_in_html = <<~HTML
        <p>This is the <a href="https://fractalsoft.org/" rel="nofollow">FractalSoft</a></p>
      HTML
      markdown = described_class.new(link_in_markdown)

      expect(markdown.to_html).to eq(expected_result_in_html)
    end

    it 'returns the HTML code that corresponds to the link in Markdown with www recognition' do
      markdown_with_www_link = 'Visit www.fractalsoft.org'
      expected_result_in_html = <<~HTML
        <p>Visit <a href="http://www.fractalsoft.org" rel="nofollow">www.fractalsoft.org</a></p>
      HTML
      markdown = described_class.new(markdown_with_www_link)

      expect(markdown.to_html).to eq(expected_result_in_html)
    end

    it 'returns the HTML code that corresponds to the image as link in Markdown' do
      image_as_link_in_markdown = '[![My image](/path/to/image)](https://fractalsoft.org/)'
      expected_result_in_html = <<~HTML
        <p><a href="https://fractalsoft.org/" rel="nofollow"><img src="/path/to/image" alt="My image"></a></p>
      HTML
      markdown = described_class.new(image_as_link_in_markdown)

      expect(markdown.to_html).to eq(expected_result_in_html)
    end

    it 'returns the HTML code that corresponds to the link in header in Markdown' do
      header_link_in_markdown = '# My Header [link](https://fractalsoft.org/)'
      expected_result_in_html = <<~HTML
        <h1>My Header <a href="https://fractalsoft.org/" rel="nofollow">link</a></h1>
      HTML
      markdown = described_class.new(header_link_in_markdown)

      expect(markdown.to_html).to eq(expected_result_in_html)
    end

    it 'returns the HTML code that corresponds to the quote in Markdown' do
      quote_in_markdown = '> Be or not to be'
      expected_result_in_html = "<blockquote>\n<p>Be or not to be</p>\n</blockquote>\n"
      markdown = described_class.new(quote_in_markdown)

      expect(markdown.to_html).to eq(expected_result_in_html)
    end

    it 'returns the HTML code that corresponds to the ordered list in Markdown' do
      ordered_list_in_markdown = <<~ORDERED_LIST
        1. First item
        2. Second item
        3. Third item
      ORDERED_LIST
      expected_result_in_html = <<~HTML
        <ol>
        <li>First item</li>
        <li>Second item</li>
        <li>Third item</li>
        </ol>
      HTML
      markdown = described_class.new(ordered_list_in_markdown)

      expect(markdown.to_html).to eq(expected_result_in_html)
    end

    it 'returns the HTML code that corresponds to the unordered list in Markdown' do
      unordered_list_in_markdown = <<~UNORDERED_LIST
        - First item
        - Second item
        - Third item
      UNORDERED_LIST
      expected_result_in_html = <<~HTML
        <ul>
        <li>First item</li>
        <li>Second item</li>
        <li>Third item</li>
        </ul>
      HTML
      markdown = described_class.new(unordered_list_in_markdown)

      expect(markdown.to_html).to eq(expected_result_in_html)
    end

    it 'returns the HTML code that corresponds to the image in Markdown' do
      image_in_markdown = '![My image](/path/to/image)'
      expected_result_in_html = <<~HTML
        <p><img src="/path/to/image" alt="My image"></p>
      HTML
      markdown = described_class.new(image_in_markdown)

      expect(markdown.to_html).to eq(expected_result_in_html)
    end

    it 'returns the HTML code that corresponds to the table in Markdown' do
      table_in_markdown = <<~TABLE
        | Syntax      | Description |
        |-------------|-------------|
        | Header      | Title       |
        | Paragraph   | Text        |
      TABLE
      expected_result_in_html = <<~HTML
        <table><thead>
        <tr>
        <th>Syntax</th>
        <th>Description</th>
        </tr>
        </thead><tbody>
        <tr>
        <td>Header</td>
        <td>Title</td>
        </tr>
        <tr>
        <td>Paragraph</td>
        <td>Text</td>
        </tr>
        </tbody></table>
      HTML
      markdown = described_class.new(table_in_markdown)

      expect(markdown.to_html).to eq(expected_result_in_html)
    end
  end
end
