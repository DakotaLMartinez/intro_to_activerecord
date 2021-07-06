class CreatePets < ActiveRecord::Migration[5.2]
  def change
    puts self
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.string :breed
    end
  end
end
