require 'rails_helper'

RSpec.describe Person do
  context 'with relations' do
    subject(:member_team) do
      described_class.create(
        first_name: 'John',
        last_name: 'Smith',
        contributions: [contribution]
      )
    end

    let(:project) { create(:project) }
    let(:contribution) { create(:contribution, project:) }

    it 'has many projects through contributions' do
      expect(member_team).to have_many(:projects)
    end

    it 'returns projects' do
      expect(member_team.projects).to eq [project]
    end

    it 'has many contibutions' do
      expect(member_team).to have_many(:contributions)
    end

    it 'returns contributions' do
      expect(member_team.contributions).to eq [contribution]
    end
  end

  context 'with #project_with_contributions' do
    subject(:person_with_contributions) do
      create(:contribution, project:, person: create(:person))
      described_class.create(
        first_name: 'John',
        last_name: 'Smith',
        contributions: [contribution]
      )
    end

    let(:project) { create(:project) }
    let(:contribution) { create(:contribution, project:) }

    it 'show only contribution for specific person' do
      expect(person_with_contributions.project_with_contributions(project)).to eq [contribution]
    end
  end

  context 'with #skill_list' do
    it 'show array of skills' do
      person = create(:person, skills: 'Ruby,Ruby on Rails')
      expect(person.skill_list).to eq ['Ruby', 'Ruby on Rails']
    end

    it 'show empty array of skills when person do not have skills' do
      person = create(:person)
      expect(person.skill_list).to be_empty
    end
  end
end
