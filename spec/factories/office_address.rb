FactoryBot.define do
  factory :office_address do
    sequence(:slug) { |number| "slug-#{number}" }
    city { 'Cieszyn' }
    iso_3166_code { 'PL' }
    postcode { '43-400' }
    street_with_number { 'ul. Trzech Braci 3/1' }
  end
end
