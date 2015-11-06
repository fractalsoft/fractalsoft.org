require 'rails_helper'

RSpec.describe Cieszyn::PricesController, type: :routing do
  it 'routes to #index' do
    path = 'cieszyn/prices'
    expect(get("/pl/#{path}")).to route_to("#{path}#index", locale: 'pl')
  end
end
