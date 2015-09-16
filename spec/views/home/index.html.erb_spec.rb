require 'rails_helper'

RSpec.describe 'home/index', type: :view do
  before do
    assign(:home, HomeFacade.new)
  end

  it 'renders home' do
    render
  end
end
