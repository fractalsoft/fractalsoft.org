FactoryBot.define do
  factory :office_address do
    sequence(:slug) { |number| "slug-#{number}" }
    city { 'Gliwice' }
    iso_3166_code { 'PL' }
    postcode { '44-100' }
    street_with_number { 'ul. Średnia 24/5' }
  end
end
