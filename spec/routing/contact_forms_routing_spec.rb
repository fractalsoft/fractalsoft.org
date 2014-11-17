require 'rails_helper'

describe ContactFormsController, type: :routing do
  it 'POST #new' do
    expect(get('/contact-forms/new')).to route_to(
      controller: 'contact_forms',
      action: 'new'
    )
  end

  it 'POST #create' do
    expect(post('/contact-forms')).to route_to(
      controller: 'contact_forms',
      action: 'create'
    )
  end
end
