FactoryBot.define do
  factory :saved_search do
    association(:user, factory: :user)
    name { Faker::HitchhikersGuideToTheGalaxy.planet }
    params { "{keyword: 'kundalini'}" }
  end
end
