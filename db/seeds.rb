class Seed

  def self.begin 
    seed = Seed.new
    seed.generate_dogs
    seed.generate_cats
  end

  def generate_dogs
    20.times do |i|
      dog = Dog.create!(
        name: Faker::Creature::Dog.name,
        age: Faker::Number.between(from: 1, to: 10),
        description: Faker::Hipster.sentence,
        breed: Faker::Creature::Dog.breed
      )
      puts "Dog #{i}: This dog's name is #{dog.name} they are #{dog.age} years old, they are best described as  #{dog.description}, their breed is #{dog.breed}."
    end
  end

  def generate_cats
    20.times do |i|
       cat = Cat.create!(
        name: Faker::Creature::Cat.name,
        age: Faker::Number.between(from: 1, to: 10),
        description: Faker::Hipster.sentence,
        breed: Faker::Creature::Cat.breed
      )
      puts "Cat #{i}: This cat's name is #{cat.name} they are #{cat.age} years old, they are best described as #{cat.description}, their breed is #{cat.breed}."
    end
  end
end