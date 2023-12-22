# frozen_string_literal: true

require 'date'

class HolidayCalendar
  def initialize(date)
    @date = date
  end

  def xmas?
    (date.month == 12) && (24..26).cover?(date.day)
  end

  private

  attr_reader :date
end
