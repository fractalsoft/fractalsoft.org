require 'rails_helper'

RSpec.describe OfficeAddress do
  describe '#sorted' do
    it 'returns office addresses in position order' do
      second_office_address = create(:office_address, position: 2)
      third_office_address = create(:office_address, position: 3)
      first_office_address = create(:office_address, position: 1)

      expect(described_class.sorted).to eq(
        [
          first_office_address,
          second_office_address,
          third_office_address
        ]
      )
    end
  end
end
