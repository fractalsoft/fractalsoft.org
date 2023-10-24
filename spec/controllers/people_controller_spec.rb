require 'rails_helper'

RSpec.describe PeopleController do
  describe 'GET #index' do
    context 'with English language' do
      it 'renders page with team' do
        people = instance_double(PeopleFacade)
        allow(PeopleFacade).to receive(:list).and_return(people)

        get :index, params: { locale: 'en' }

        aggregate_failures('verify response') do
          expect(assigns(:people)).to eq(people)
          expect(response).to render_template('index')
          expect(response).to be_successful
        end
      end
    end

    context 'with Polish language' do
      it 'renders page with team' do
        people = instance_double(PeopleFacade)
        allow(PeopleFacade).to receive(:list).and_return(people)

        get :index, params: { locale: 'pl' }

        aggregate_failures('verify response') do
          expect(assigns(:people)).to eq(people)
          expect(response).to render_template('index')
          expect(response).to be_successful
        end
      end
    end
  end

  describe 'GET #show' do
    context 'with English language' do
      it 'renders page with single person' do
        person = instance_double(PersonFacade)
        allow(PersonFacade).to receive(:new).and_return(person)

        get :show, params: { id: '1', locale: 'en' }

        aggregate_failures('verify response') do
          expect(assigns(:person)).to eq(person)
          expect(response).to render_template('show')
          expect(response).to be_successful
        end
      end
    end

    context 'with Polish language' do
      it 'renders page with single person' do
        person = instance_double(PersonFacade)
        allow(PersonFacade).to receive(:new).and_return(person)

        get :show, params: { id: '1', locale: 'pl' }

        aggregate_failures('verify response') do
          expect(assigns(:person)).to eq(person)
          expect(response).to render_template('show')
          expect(response).to be_successful
        end
      end
    end
  end
end
