# frozen_string_literal: true

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

    it 'sorts contributions by their ascending positions' do
      subject = described_class.build(first_name: 'John', last_name: 'Smith')
      project = create(:project)
      second_contribution = create(:contribution, position: 2, project:, person: subject)
      third_contribution = create(:contribution, position: 3, project:, person: subject)
      first_contribution = create(:contribution, position: 1, project:, person: subject)

      expect(subject.project_with_contributions(project)).to eq [first_contribution, second_contribution, third_contribution]
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

  describe '.published' do
    it 'returns only published persons' do
      published_person = create(:person, published: true)
      unpublished_person = create(:person, published: false)

      aggregate_failures do
        expect(described_class.published).to include(published_person)
        expect(described_class.published).not_to include(unpublished_person)
      end
    end
  end
end
