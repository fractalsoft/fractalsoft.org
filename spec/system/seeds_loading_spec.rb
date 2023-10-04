require 'system_helper'

RSpec.describe 'Application loads the seeds' do
  it 'is done correctly and homepage displays team member profiles' do
    Rails.application.load_seed

    visit '/'

    aggregate_failures('verify first names of all team members') do
      expect(page).to have_content 'Agnieszka'
      expect(page).to have_content 'Alex'
      expect(page).to have_content 'Anna'
      expect(page).to have_content 'Grzegorz'
    end
  end
end
