require 'rails_helper'

RSpec.describe 'people/index', type: :view do
  before(:each) do
    assign(:people, [
      Person.create!(
        :fullname => 'Fullname',
        :description => 'MyText',
        :position => 'Position',
        :image => 'Image',
        :website => 'Website',
        :facebook => 'Facebook',
        :twitter => 'Twitter',
        :github => 'Github',
        :email => 'Email'
      ),
      Person.create!(
        :fullname => 'Fullname',
        :description => 'MyText',
        :position => 'Position',
        :image => 'Image',
        :website => 'Website',
        :facebook => 'Facebook',
        :twitter => 'Twitter',
        :github => 'Github',
        :email => 'Email'
      )
    ])
  end
end
