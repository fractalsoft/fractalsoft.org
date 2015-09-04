require 'rails_helper'

RSpec.describe Project, type: :model do
  subject(:project) { build(:project) }

  it 'has many images' do
    image = Image.new
    project.images << image
    expect(project.images).to eq [image]
  end

  it 'has many contributions' do
    contribution = create(:contribution)
    project.contributions << contribution
    expect(project).to have_many(:contributions)
    expect(project.contributions).to eq [contribution]
  end

  it 'has many people through contibutions' do
    person = create(:person)
    create(:contribution, person: person)
    project.people << person
    expect(project).to have_many(:people)
    expect(project.people).to eq [person]
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
