class Cat < ApplicationRecord
  include PgSearch::Model 
  
  validates :name, presence: true 
  validates :age, presence: true
  validates :description, presence: true
  validates_length_of :description, minimum: 25, maximum: 250
  validates :breed, presence: true

  pg_search_scope :search_cats, against: [:name],
  using: {
    tsearch:{
      any_word: true, 
      prefix: true
    }
  }
end