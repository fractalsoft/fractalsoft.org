require 'rails_helper'

RSpec.describe "projects/index", :type => :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        :title => "Title",
        :subtitle => "Subtitle",
        :descritpion => "MyText",
        :url => "Url",
        :thumbnail => "Thumbnail"
      ),
      Project.create!(
        :title => "Title",
        :subtitle => "Subtitle",
        :descritpion => "MyText",
        :url => "Url",
        :thumbnail => "Thumbnail"
      )
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Subtitle".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Thumbnail".to_s, :count => 2
  end
end
