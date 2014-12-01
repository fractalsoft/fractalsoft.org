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
    path = fixture_path + '/images/test.jpg'
    img = Image.create(image: Rack::Test::UploadedFile.new(path, 'image/jpg'))
    allow_any_instance_of(Project).to receive_messages(
      top_image: img, logo_image: img, pc_image: img
    )
  end

  it 'renders attributes in view' do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Url/)
  end
end
