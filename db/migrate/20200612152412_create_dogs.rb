class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.column :name, :string
      t.column :age, :integer
      t.column :description, :string
      t.column :breed, :string
    end
  end
end
