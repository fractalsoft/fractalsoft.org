require 'rails_helper'

RSpec.describe Project, type: :model do
  subject(:project) { Project.new }

  it 'has many images' do
    image = Image.new
    project.images << image
    expect(project.images).to eq [image]
  end
end
