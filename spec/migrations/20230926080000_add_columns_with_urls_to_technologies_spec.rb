# frozen_string_literal: true

require 'spec_helper'
require 'rails_helper'
require_relative '../../db/migrate/20230926080000_add_columns_with_urls_to_technologies'

RSpec.describe AddColumnsWithUrlsToTechnologies do
  let(:technologies) do
    Class.new(ApplicationRecord) do
      self.table_name = 'technologies'
    end
  end

  describe 'GitHub' do
    context 'when the github repo is blank' do
      it 'returns the github url as nil' do
        technology = technologies.create(github_repo: nil)

        expect(technology.reload.github_url).to be_nil
      end
    end

    context 'when the github repo is present' do
      it 'returns the github url as correct link to the repository on GitHub' do
        technology = technologies.create(github_repo: 'fractalsoft/fractalsoft.org')

        expect(technology.reload.github_url).to eq('https://github.com/fractalsoft/fractalsoft.org')
      end
    end
  end
end
