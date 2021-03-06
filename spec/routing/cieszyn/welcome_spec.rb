require 'rails_helper'

RSpec.describe Cieszyn::WelcomeController, type: :routing do
  it 'routes to #show' do
    path = 'cieszyn'
    expect(get("/#{path}")).to route_to('cieszyn/welcome#show', locale: :pl)
  end
end
