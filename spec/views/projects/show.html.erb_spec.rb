require 'rails_helper'

RSpec.describe 'projects/show', type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      title: 'Title',
      subtitle: 'Subtitle',
      description: 'MyText',
      url: 'Url',
      thumbnail: 'Thumbnail'
    ))
  end

  it 'renders attributes in view' do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Url/)
  end
end
