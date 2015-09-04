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

  context '#project_with_contributions' do
    let(:project) { create(:project) }
    let(:contribution) { create(:contribution, project: project) }

    subject do
      create(:contribution, project: project, person: create(:person))
      Person.create(fullname: 'John Smith', contributions: [contribution])
    end

    it 'show only contribution for specific person' do
      expect(subject.project_with_contributions(project)).to eq [contribution]
    end
  end

  context '#skill_list' do
    it 'show array of skills' do
      person = create(:person, skills: 'Ruby,Ruby on Rails')
      expect(person.skill_list).to eq ['Ruby', 'Ruby on Rails']
    end

    it 'show empty array of skills when person do not have skills' do
      person = create(:person)
      expect(person.skill_list).to be_empty
    end
  end

  context '#technology_list' do
    it 'show array of technologies' do
      person = create(:person, technologies: 'Ruby,Ruby on Rails')
      expect(person.technology_list).to eq ['Ruby', 'Ruby on Rails']
    end

    it 'show empty array of technologies when person do not have one' do
      person = create(:person)
      expect(person.technology_list).to be_empty
    end
  end
end
