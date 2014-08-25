require 'rails_helper'

RSpec.describe 'home/index', type: :view do
  before { assign(:contact, ContactForm.new) }

  it 'renders home' do
    render
  end
end
