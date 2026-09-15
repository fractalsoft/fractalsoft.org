# frozen_string_literal: true

FactoryBot.define do
  factory :office_address do
    sequence(:slug) { |number| "slug-#{number}" }
    city { 'Gliwice' }
    iso_3166_code { 'PL' }
    postcode { '44-100' }
    street_with_number { 'ul. Średnia 24/5' }
    map_link { 'https://www.openstreetmap.org/export/embed.html?bbox=18.69023591279984%2C50.30172935216233%2C18.694591820240024%2C50.30325069073261&layer=mapnik&marker=50.30249%2C18.69275' }
  end
end
