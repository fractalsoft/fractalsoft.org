FactoryBot.define do
  factory :technological_skill do
    person
    rating { 0 }
    technology
  end
end
