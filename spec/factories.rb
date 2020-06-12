FactoryBot.define do
  factory(:dog) do
        name {Faker::Creature::Dog.name}
        age {Faker::Number.between(from: 1, to: 10)}
        description {Faker::Hipster.sentence}
        breed {Faker::Creature::Dog.breed}
  end
  
end