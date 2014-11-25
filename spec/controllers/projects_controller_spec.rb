require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do
  let!(:project) { Project.create! }

  describe 'GET index' do
    it 'assigns all projects as @projects' do
      get :index
      expect(assigns(:projects)).to eq([project])
    end
  end

  describe 'GET show' do
    it 'assigns the requested project as @project' do
      get :show, id: project
      expect(assigns(:project)).to eq(project)
    end
  end
end
