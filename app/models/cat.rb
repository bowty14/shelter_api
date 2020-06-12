class Cat < ApplicationRecord
  validates :name, presence: true 
  validates :age, presence: true
  validates :description, presence: true
  validates_length_of :description, minimum: 25, maximum: 250
  validates :breed, presence: true
end