require 'rails_helper'

RSpec.describe Project, type: :model do
  subject(:project) { build(:project) }

  let(:contribution) { create(:contribution) }
  let(:person) { create(:person) }

  it 'has many images' do
    image = Image.new
    project.images << image
    expect(project.images).to eq [image]
  end

  it 'has many contributions' do
    expect(project).to have_many(:contributions)
  end

  it 'returns contributions' do
    project.contributions << contribution
    expect(project.contributions).to eq [contribution]
  end

  it 'has many people through contibutions' do
    expect(project).to have_many(:people)
  end

  it 'returns people' do
    create(:contribution, person:, project:)
    expect(project.people).to eq [person]
  end

  describe '#logo_image' do
    it 'show logo image' do
      image = Image.create(kind: 'logo', project:)
      Image.create(kind: 'other', project:)

      expect(project.logo_image).to eq(image)
    end
  end

  describe '#page_images' do
    it 'show all page images' do
      image = Image.create(kind: 'page', project:)
      Image.create(kind: 'other', project:)

      expect(project.page_images).to eq([image])
    end
  end

  describe '#pc_image' do
    it 'show pc image' do
      image = Image.create(kind: 'pc', project:)
      Image.create(kind: 'other', project:)

      expect(project.pc_image).to eq(image)
    end
  end

  describe '#top_image' do
    it 'show top image' do
      image = Image.create(kind: 'top', project:)
      Image.create(kind: 'other', project:)

      expect(project.top_image).to eq(image)
    end
  end
end
