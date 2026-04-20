# frozen_string_literal: true

require 'system_helper'

RSpec.describe 'Application loads the seeds' do
  it 'is done correctly and team page displays member profiles' do
    Rails.application.load_seed

    visit people_path(locale: :en)

    aggregate_failures('verify first names of all team members') do
      expect(page).to have_content 'Agnieszka'
      expect(page).to have_content 'Alex'
      expect(page).to have_content 'Grzegorz'
    end
  end
end
