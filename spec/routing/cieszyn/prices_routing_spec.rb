require 'rails_helper'

RSpec.describe Cieszyn::PricesController do
  it 'routes to #index' do
    path = 'cieszyn/prices'
    expect(get("/#{path}")).to route_to("#{path}#index", locale: :pl)
  end
end
