require 'rails_helper'

RSpec.describe "projects/new", :type => :view do
  before(:each) do
    assign(:project, Project.new(
      :title => "MyString",
      :subtitle => "MyString",
      :descritpion => "MyText",
      :url => "MyString",
      :thumbnail => "MyString"
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input#project_title[name=?]", "project[title]"

      assert_select "input#project_subtitle[name=?]", "project[subtitle]"

      assert_select "textarea#project_descritpion[name=?]", "project[descritpion]"

      assert_select "input#project_url[name=?]", "project[url]"

      assert_select "input#project_thumbnail[name=?]", "project[thumbnail]"
    end
  end
end
