require 'rails_helper'

RSpec.describe Person, type: :model do
  context 'relations' do
    let(:project) { create(:project) }
    let(:contribution) { create(:contribution, project: project) }
    subject do
      Person.create(fullname: 'John Smith', contributions: [contribution])
    end

    it 'has many projects through contributions' do
      expect(subject).to have_many(:projects)
      expect(subject.projects).to eq [project]
    end

    it 'has many contibutions' do
      expect(subject).to have_many(:contributions)
      expect(subject.contributions).to eq [contribution]
    end
  end
end
