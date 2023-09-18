FactoryBot.define do
  factory :person do
    first_name { 'Linus' }
    last_name { 'Torvalds' }
    slug { 'linus' }
  end
end
