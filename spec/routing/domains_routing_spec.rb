# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DomainsController do
  describe 'routing' do
    context 'with English language' do
      it { is_expected.to route(:get, '/industry/it').to(controller: :domains, action: :show, id: 'it', locale: 'en') }
    end

    context 'with Polish language' do
      it { is_expected.to route(:get, '/pl/branza/it').to(controller: :domains, action: :show, id: 'it', locale: 'pl') }
    end
  end
end
