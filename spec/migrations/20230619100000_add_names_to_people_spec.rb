# frozen_string_literal: true

require 'spec_helper'
require 'rails_helper'
require_relative '../../db/migrate/20230619100000_add_names_to_people'

RSpec.describe AddNamesToPeople do
  let(:people) do
    Class.new(ApplicationRecord) do
      self.table_name = 'people'
    end
  end

  context 'when the first name and the last name are blank' do
    it 'returns the full name as nil' do
      person = people.create(first_name: nil, last_name: nil)

      expect(person.reload.full_name).to be_nil
    end
  end

  context 'when the first name is present and the last name is blank' do
    it 'returns the full name as nil' do
      person = people.create(first_name: 'Matsumoto', last_name: nil)

      expect(person.reload.full_name).to be_nil
    end
  end

  context 'when the first name is blank and the last name is present' do
    it 'returns the full name as nil' do
      person = people.create(first_name: nil, last_name: 'Yukihiro')

      expect(person.reload.full_name).to be_nil
    end
  end

  context 'when the first name and the last name are present' do
    it 'returns the full name as a combination of first name and last name' do
      person = people.create(first_name: 'Matsumoto', last_name: 'Yukihiro')

      expect(person.reload.full_name).to eq('Matsumoto Yukihiro')
    end
  end
end
