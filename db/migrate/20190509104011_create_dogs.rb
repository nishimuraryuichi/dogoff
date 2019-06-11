class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name, null: false
      t.string :breed, null: false
      t.string :prefecture, null: false
      t.string :municipalities, null: false
      t.string :town, null: false
      t.integer :age
      t.string :sex
      t.references :user,foreign_key: true
      t.timestamps
    end
  end
end
