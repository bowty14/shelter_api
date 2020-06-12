FactoryBot.define do
  factory(:dog) do
        name {Faker::Creature::Dog.name}
        age {Faker::Number.between(from: 1, to: 10)}
        description {Faker::Hipster.sentence}
        breed {Faker::Creature::Dog.breed}
  end

  factory(:cat) do 
        name {Faker::Creature::Cat.name}
        age {Faker::Number.between(from: 1, to: 10)}
        description {Faker::Hipster.sentence}
        breed {Faker::Creature::Cat.breed}
  end
end