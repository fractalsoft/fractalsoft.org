require 'rails_helper'

RSpec.describe ApplicationHelper do
  describe '#flash_class' do
    context 'when flash type is notice' do
      it 'returns success' do
        expect(flash_class('notice')).to eq('success')
      end
    end

    context 'when flash type is alert' do
      it 'returns danger' do
        expect(flash_class('alert')).to eq('danger')
      end
    end
  end
end
