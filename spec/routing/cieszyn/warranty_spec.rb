require 'rails_helper'

RSpec.describe Cieszyn::WarrantyController do
  it 'routes to #show' do
    path = 'cieszyn/warranty'
    expect(get("/#{path}")).to route_to("#{path}#show", locale: :pl)
  end
end
