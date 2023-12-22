# frozen_string_literal: true

require 'spec_helper'
require 'holiday_calendar'

RSpec.describe HolidayCalendar do
  describe '#xmas?' do
    context 'when date is before Christmas' do
      it { expect(described_class.new(Date.new(2023, 12, 23))).not_to be_xmas }
      it { expect(described_class.new(Date.new(2024, 1, 1))).not_to be_xmas }
    end

    context 'when the date is Christmas or Christmas Eve' do
      it { expect(described_class.new(Date.new(2023, 12, 24))).to be_xmas }
      it { expect(described_class.new(Date.new(2023, 12, 26))).to be_xmas }
      it { expect(described_class.new(Date.new(2024, 12, 25))).to be_xmas }
    end

    context 'when date is after Christmas' do
      it { expect(described_class.new(Date.new(2023, 12, 27))).not_to be_xmas }
      it { expect(described_class.new(Date.new(2024, 12, 31))).not_to be_xmas }
    end
  end
end
