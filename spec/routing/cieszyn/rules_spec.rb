require 'rails_helper'

RSpec.describe Cieszyn::RulesController, type: :routing do
  it 'routes to #show' do
    path = 'cieszyn/rules'
    expect(get("/pl/#{path}")).to route_to("#{path}#show", locale: 'pl')
  end
end
