require 'rails_helper'

RSpec.describe Cieszyn::CollaborationController do
  it 'routes to #show' do
    path = 'cieszyn/collaboration'
    expect(get("/#{path}")).to route_to("#{path}#show", locale: :pl)
  end
end
