FactoryBot.define do
  factory(:dog) do
        name {Faker::Creature::Dog.name}
        age {Faker::Number.between(from: 1, to: 10)}
        description {Faker::Hipster.sentence(word_count: 10)}
        breed {Faker::Creature::Dog.breed}
  end

  factory(:cat) do 
        name {Faker::Creature::Cat.name}
        age {Faker::Number.between(from: 1, to: 10)}
       description {Faker::Hipster.sentence(word_count: 10)}
        breed {Faker::Creature::Cat.breed}
  end
end