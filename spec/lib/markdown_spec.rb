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
      expected_result_in_html = "<p>My name is 'Bond, James Bond'</p>\n"
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
      expected_result_in_html = '<pre style="background-color:#2b303b;">' \
                                '<code class="language-ruby">' \
                                '<span style="color:#96b5b4;">puts </span>' \
                                '<span style="color:#c0c5ce;">&#39;</span>' \
                                '<span style="color:#a3be8c;">Hello world</span>' \
                                "<span style=\"color:#c0c5ce;\">&#39;\n</span></code></pre>\n"
      markdown = described_class.new(block_code_in_markdown)

      expect(markdown.to_html).to eq(expected_result_in_html)
    end

    it 'returns the HTML code that corresponds to the header in Markdown' do
      header_in_markdown = '# The most important heading'
      expected_result_in_html = '<h1><a href="#the-most-important-heading" ' \
                                'aria-hidden="true" class="anchor" id="the-most-important-heading"></a>' \
                                "The most important heading</h1>\n"
      markdown = described_class.new(header_in_markdown)

      expect(markdown.to_html).to eq(expected_result_in_html)
    end

    it 'returns the HTML code that corresponds to the link in Markdown' do
      link_in_markdown = 'This is the [FractalSoft](https://fractalsoft.org/)'
      expected_result_in_html = <<~HTML
        <p>This is the <a href="https://fractalsoft.org/">FractalSoft</a></p>
      HTML
      markdown = described_class.new(link_in_markdown)

      expect(markdown.to_html).to eq(expected_result_in_html)
    end

    it 'returns the HTML code that corresponds to the link in Markdown with www recognition' do
      markdown_with_www_link = 'Visit www.fractalsoft.org'
      expected_result_in_html = <<~HTML
        <p>Visit <a href="http://www.fractalsoft.org">www.fractalsoft.org</a></p>
      HTML
      markdown = described_class.new(markdown_with_www_link)

      expect(markdown.to_html).to eq(expected_result_in_html)
    end

    it 'returns the HTML code that corresponds to the image as link in Markdown' do
      image_as_link_in_markdown = '[![My image](/path/to/image)](https://fractalsoft.org/)'
      expected_result_in_html = <<~HTML
        <p><a href="https://fractalsoft.org/"><img src="/path/to/image" alt="My image" /></a></p>
      HTML
      markdown = described_class.new(image_as_link_in_markdown)

      expect(markdown.to_html).to eq(expected_result_in_html)
    end

    it 'returns the HTML code that corresponds to the link in header in Markdown' do
      header_link_in_markdown = '# My Header [link](https://fractalsoft.org/)'
      expected_result_in_html = '<h1><a href="#my-header-link" aria-hidden="true" class="anchor" id="my-header-link"></a>' \
                                "My Header <a href=\"https://fractalsoft.org/\">link</a></h1>\n"
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
        <p><img src="/path/to/image" alt="My image" /></p>
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
        <table>
        <thead>
        <tr>
        <th>Syntax</th>
        <th>Description</th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <td>Header</td>
        <td>Title</td>
        </tr>
        <tr>
        <td>Paragraph</td>
        <td>Text</td>
        </tr>
        </tbody>
        </table>
      HTML
      markdown = described_class.new(table_in_markdown)

      expect(markdown.to_html).to eq(expected_result_in_html)
    end

    it 'returns the HTML code that corresponds to the task list in Markdown' do
      task_list_in_markdown = <<~TASK_LIST
        - [ ] first to do
        - [x] second to do
      TASK_LIST
      expected_result_in_html = <<~HTML
        <ul>
        <li><input type="checkbox" disabled="" /> first to do</li>
        <li><input type="checkbox" checked="" disabled="" /> second to do</li>
        </ul>
      HTML
      markdown = described_class.new(task_list_in_markdown)

      expect(markdown.to_html).to eq(expected_result_in_html)
    end
  end
end
