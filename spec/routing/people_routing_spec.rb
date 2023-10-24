require 'rails_helper'

RSpec.describe PeopleController do
  describe 'routing' do
    context 'with English language' do
      it { is_expected.to route(:get, '/team').to(controller: :people, action: :index, locale: 'en') }
      it { is_expected.to route(:get, '/team/1').to(controller: :people, action: :show, id: 1, locale: 'en') }
    end

    context 'with Polish language' do
      it { is_expected.to route(:get, '/pl/zespol').to(controller: :people, action: :index, locale: 'pl') }
      it { is_expected.to route(:get, '/pl/zespol/1').to(controller: :people, action: :show, id: 1, locale: 'pl') }
    end
  end
end
