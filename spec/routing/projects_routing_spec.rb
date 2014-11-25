require 'rails_helper'

RSpec.describe ProjectsController, type: :routing do
  describe 'routing' do

    it 'routes to #index' do
      expect(get('/projects')).to route_to('projects#index')
    end

    it 'routes to #show' do
      expect(get('/projects/1')).to route_to('projects#show', id: '1')
    end
  end
end
