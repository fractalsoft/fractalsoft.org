# frozen_string_literal: true

require 'system_helper'

RSpec.describe 'Application loads the seeds' do
  it 'is done correctly and team page displays member profiles' do
    Rails.application.load_seed

    visit people_path(locale: :en)

    aggregate_failures('verify first names of all team members') do
      expect(page).to have_text 'Agnieszka'
      expect(page).to have_text 'Alex'
      expect(page).to have_text 'Grzegorz'
    end
  end
end
