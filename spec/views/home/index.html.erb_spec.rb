require 'rails_helper'

RSpec.describe 'home/index', type: :view do
  before do
    assign(:contact, ContactForm.new)
    assign(:people, Person.all)
  end

  it 'renders home' do
    render
  end
end
