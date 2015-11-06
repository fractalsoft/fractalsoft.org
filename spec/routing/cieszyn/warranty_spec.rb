require 'rails_helper'

RSpec.describe Cieszyn::WarrantyController, type: :routing do
  it 'routes to #show' do
    path = 'cieszyn/warranty'
    expect(get("/pl/#{path}")).to route_to("#{path}#show", locale: 'pl')
  end
end
