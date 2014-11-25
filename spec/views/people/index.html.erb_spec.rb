require 'rails_helper'

RSpec.describe "people/index", :type => :view do
  before(:each) do
    assign(:people, [
      Person.create!(
        :fullname => "Fullname",
        :description => "MyText",
        :position => "Position",
        :image => "Image",
        :website => "Website",
        :facebook => "Facebook",
        :twitter => "Twitter",
        :github => "Github",
        :email => "Email"
      ),
      Person.create!(
        :fullname => "Fullname",
        :description => "MyText",
        :position => "Position",
        :image => "Image",
        :website => "Website",
        :facebook => "Facebook",
        :twitter => "Twitter",
        :github => "Github",
        :email => "Email"
      )
    ])
  end

  it "renders a list of people" do
    render
    assert_select "tr>td", :text => "Fullname".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Facebook".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
    assert_select "tr>td", :text => "Github".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
