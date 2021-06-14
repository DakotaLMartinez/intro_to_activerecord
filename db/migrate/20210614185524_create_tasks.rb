class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.string :author
      t.boolean :complete, default: false, null: false
    end
  end
end
