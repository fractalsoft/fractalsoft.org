require 'rails_helper'

RSpec.describe CommunitiesController do
  describe 'routing' do
    context 'with English language' do
      it { is_expected.to route(:get, '/community').to(controller: :communities, action: :index, locale: 'en') }
      it { is_expected.to route(:get, '/community/1').to(controller: :communities, action: :show, id: 1, locale: 'en') }
    end

    context 'with Polish language' do
      it { is_expected.to route(:get, '/pl/spolecznosc').to(controller: :communities, action: :index, locale: 'pl') }
      it { is_expected.to route(:get, '/pl/spolecznosc/1').to(controller: :communities, action: :show, id: 1, locale: 'pl') }
    end
  end
end
