# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProjectsController do
  describe 'GET #index' do
    let(:projects_by_type) do
      {
        modernization: create(:project, title: 'Legacy modernization', display: true, engagement_type: 'modernization'),
        automation: create(:project, title: 'Back-office automation', display: true, engagement_type: 'automation'),
        product: create(:project, title: 'Product development', display: true, engagement_type: 'product'),
        integration: create(:project, title: 'System integration', display: true, engagement_type: 'integration'),
        ai: create(:project, title: 'AI pipeline', display: true, engagement_type: 'ai'),
        hidden: create(:project, title: 'Hidden project', display: false, engagement_type: 'automation')
      }
    end

    def project_for(type)
      projects_by_type.fetch(type)
    end

    before do
      projects_by_type
    end

    it 'returns displayed projects as an ActiveRecord relation' do
      get :index, params: { locale: 'en' }

      aggregate_failures('verify collection') do
        projects = assigns(:projects_page).projects
        expect(projects).to be_a(ActiveRecord::Relation)
        expect(projects).to include(
          project_for(:modernization),
          project_for(:automation),
          project_for(:product),
          project_for(:integration),
          project_for(:ai)
        )
        expect(projects).not_to include(project_for(:hidden))
      end
    end

    it 'filters modernization projects by engagement_type' do
      get :index, params: { locale: 'en', filter: 'modernization' }

      expect(assigns(:projects_page).projects).to contain_exactly(project_for(:modernization))
    end

    it 'filters automation projects by engagement_type' do
      get :index, params: { locale: 'en', filter: 'automation' }

      expect(assigns(:projects_page).projects).to contain_exactly(project_for(:automation))
    end

    it 'filters product projects by engagement_type' do
      get :index, params: { locale: 'en', filter: 'product' }

      expect(assigns(:projects_page).projects).to contain_exactly(project_for(:product))
    end

    it 'filters integration projects by engagement_type' do
      get :index, params: { locale: 'en', filter: 'integration' }

      expect(assigns(:projects_page).projects).to contain_exactly(project_for(:integration))
    end

    it 'filters ai projects by engagement_type' do
      get :index, params: { locale: 'en', filter: 'ai' }

      expect(assigns(:projects_page).projects).to contain_exactly(project_for(:ai))
    end

    it 'falls back to all displayed projects for an unknown filter key' do
      get :index, params: { locale: 'en', filter: 'unknown' }

      projects = assigns(:projects_page).projects
      expect(projects).to contain_exactly(
        project_for(:modernization),
        project_for(:automation),
        project_for(:product),
        project_for(:integration),
        project_for(:ai)
      )
    end

    it 'keeps filtering locale-independent because it does not inspect translated text' do
      I18n.with_locale(:pl) { project_for(:automation).update!(subtitle: 'Automatyzacja zaplecza') }

      get :index, params: { locale: 'pl', filter: 'automation' }

      expect(assigns(:projects_page).projects).to contain_exactly(project_for(:automation))
    end
  end
end
