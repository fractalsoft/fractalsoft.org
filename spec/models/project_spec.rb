require 'rails_helper'

RSpec.describe Project, type: :model do
  subject(:project) { Project.new }

  it 'has many images' do
    image = Image.new
    project.images << image
    expect(project.images).to eq [image]
  end

  describe '#logo_image' do
    it 'show logo image' do
      image = Image.create(kind: 'logo', project: project)
      Image.create(kind: 'other', project: project)

      expect(project.logo_image).to eq(image)
    end
  end

  describe '#page_images' do
    it 'show all page images' do
      image = Image.create(kind: 'page', project: project)
      Image.create(kind: 'other', project: project)

      expect(project.page_images).to eq([image])
    end
  end

  describe '#pc_image' do
    it 'show pc image' do
      image = Image.create(kind: 'pc', project: project)
      Image.create(kind: 'other', project: project)

      expect(project.pc_image).to eq(image)
    end
  end

  describe '#top_image' do
    it 'show top image' do
      image = Image.create(kind: 'top', project: project)
      Image.create(kind: 'other', project: project)

      expect(project.top_image).to eq(image)
    end
  end
end
