# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProjectsFacade do
  describe '#projects' do
    let!(:automation_project) { create(:project, title: 'Automation', display: true, engagement_type: 'automation') }
    let!(:product_project) { create(:project, title: 'Product', display: true, engagement_type: 'product') }

    it 'filters projects by a known filter key' do
      facade = described_class.new(scope: Project.where(display: true), filter_key: 'automation', locale: :en)

      expect(facade.projects).to contain_exactly(automation_project)
    end

    it 'falls back to all for unknown filters' do
      facade = described_class.new(scope: Project.where(display: true), filter_key: 'unknown', locale: :en)

      expect(facade.projects).to include(automation_project, product_project)
    end
  end

  describe '#filter_tabs' do
    it 'builds tabs and marks the active one' do
      facade = described_class.new(scope: Project.none, filter_key: 'product', locale: :en)

      product_tab = facade.filter_tabs.find { |tab| tab.path.include?('filter=product') }
      all_tab = facade.filter_tabs.find { |tab| tab.path.exclude?('filter=') }

      aggregate_failures('tab state') do
        expect(product_tab).to be_present
        expect(product_tab.active).to be(true)
        expect(all_tab).to be_present
        expect(all_tab.active).to be(false)
      end
    end
  end

  describe '#project_cards' do
    let!(:first_project) { create(:project, title: 'First', subtitle: 'Custom Tag', description: 'Fallback', display: true) }
    let!(:second_project) { create(:project, title: 'Second', introduction: 'Intro', display: true) }

    it 'builds project cards with view-ready attributes' do
      scope = Project.where(id: [first_project.id, second_project.id]).order(:id)
      facade = described_class.new(scope: scope, filter_key: 'all', locale: :en)

      cards = facade.project_cards
      first_card = cards.find { |card| card.project.id == first_project.id }
      second_card = cards.find { |card| card.project.id == second_project.id }

      aggregate_failures('card shape') do
        expect(first_card.title).to eq('First')
        expect(first_card.tag).to eq('Custom Tag')
        expect(first_card.description).to eq('Fallback')
        expect(second_card.description).to eq('Intro')
        expect(cards.map(&:reverse_layout)).to eq([false, true])
      end
    end
  end
end
