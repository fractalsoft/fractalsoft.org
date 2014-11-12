require 'rails_helper'

describe ContactFormsController, type: :routing do
  it 'POST #create' do
    expect(post('/contact-forms')).to route_to(
      controller: 'contact_forms',
      action: 'create'
    )
  end
end
