FactoryGirl.define do
  factory :student do
    name { Faker::Name.name }
    class_room { Faker::Cat.name }
    current_level { Faker::Team.sport }
  end
end
