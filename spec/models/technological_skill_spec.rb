require 'rails_helper'

RSpec.describe TechnologicalSkill do
  it { is_expected.to belong_to(:person) }
  it { is_expected.to belong_to(:technology) }
  it { is_expected.to validate_presence_of(:rating) }

  describe '#sorted' do
    it 'returns technological skills in position order' do
      second_technological_skill = create(:technological_skill, position: 2)
      third_technological_skill = create(:technological_skill, position: 3)
      first_technological_skill = create(:technological_skill, position: 1)

      expect(described_class.sorted).to eq(
        [
          first_technological_skill,
          second_technological_skill,
          third_technological_skill
        ]
      )
    end
  end
end
