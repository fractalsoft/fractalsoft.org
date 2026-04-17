# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProjectsController do
  describe 'GET #index' do
    let!(:modernization_project) { create(:project, title: 'Legacy modernization', display: true, engagement_type: 'modernization') }
    let!(:automation_project) { create(:project, title: 'Back-office automation', display: true, engagement_type: 'automation') }
    let!(:product_project) { create(:project, title: 'Product development', display: true, engagement_type: 'product') }
    let!(:integration_project) { create(:project, title: 'System integration', display: true, engagement_type: 'integration') }
    let!(:ai_project) { create(:project, title: 'AI pipeline', display: true, engagement_type: 'ai') }
    let!(:hidden_project) { create(:project, title: 'Hidden project', display: false, engagement_type: 'automation') }

    it 'returns displayed projects as an ActiveRecord relation' do
      get :index, params: { locale: 'en' }

      aggregate_failures('verify collection') do
        projects = assigns(:projects_page).projects
        expect(projects).to be_a(ActiveRecord::Relation)
        expect(projects).to include(modernization_project, automation_project, product_project, integration_project, ai_project)
        expect(projects).not_to include(hidden_project)
      end
    end

    it 'filters modernization projects by engagement_type' do
      get :index, params: { locale: 'en', filter: 'modernization' }

      expect(assigns(:projects_page).projects).to contain_exactly(modernization_project)
    end

    it 'filters automation projects by engagement_type' do
      get :index, params: { locale: 'en', filter: 'automation' }

      expect(assigns(:projects_page).projects).to contain_exactly(automation_project)
    end

    it 'filters product projects by engagement_type' do
      get :index, params: { locale: 'en', filter: 'product' }

      expect(assigns(:projects_page).projects).to contain_exactly(product_project)
    end

    it 'filters integration projects by engagement_type' do
      get :index, params: { locale: 'en', filter: 'integration' }

      expect(assigns(:projects_page).projects).to contain_exactly(integration_project)
    end

    it 'filters ai projects by engagement_type' do
      get :index, params: { locale: 'en', filter: 'ai' }

      expect(assigns(:projects_page).projects).to contain_exactly(ai_project)
    end

    it 'falls back to all displayed projects for an unknown filter key' do
      get :index, params: { locale: 'en', filter: 'unknown' }

      projects = assigns(:projects_page).projects
      expect(projects).to include(modernization_project, automation_project, product_project, integration_project, ai_project)
      expect(projects).not_to include(hidden_project)
    end

    it 'keeps filtering locale-independent because it does not inspect translated text' do
      I18n.with_locale(:pl) { automation_project.update!(subtitle: 'Automatyzacja zaplecza') }

      get :index, params: { locale: 'pl', filter: 'automation' }

      expect(assigns(:projects_page).projects).to contain_exactly(automation_project)
    end
  end
end
