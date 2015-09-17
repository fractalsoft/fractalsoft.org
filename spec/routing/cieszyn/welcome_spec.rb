require 'rails_helper'

RSpec.describe Cieszyn::WelcomeController, type: :routing do
  it 'routes to #show' do
    path = 'cieszyn/welcome'
    expect(get("/pl/#{path}")).to route_to("#{path}#show", locale: 'pl')
  end
end
