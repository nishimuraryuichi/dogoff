class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :image,null: false
      t.string :name, null: false
      t.string :type, null: false
      t.string :prefecture, null: false
      t.string :municipalities, null: false
      t.string :town, null: false
      t.integer :age
      t.string :sex
      t.timestamps
    end
  end
end
