require 'rails_helper'

RSpec.describe 'projects/edit', type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      title: 'MyString',
      subtitle: 'MyString',
      description: 'MyText',
      url: 'MyString',
      thumbnail: 'MyString'
    ))
  end

  it 'renders the edit project form' do
    render

    assert_select 'form[action=?][method=?]', project_path(@project), 'post' do
      assert_select 'input#project_title[name=?]', 'project[title]'
      assert_select 'input#project_subtitle[name=?]', 'project[subtitle]'
      assert_select 'textarea#project_description[name=?]', 'project[description]'
      assert_select 'input#project_url[name=?]', 'project[url]'
      assert_select 'input#project_thumbnail[name=?]', 'project[thumbnail]'
    end
  end
end
