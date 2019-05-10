class AddcaramuTousers < ActiveRecord::Migration[5.2]
  def change
    t.string :sex, null: false
    t.string :age, null: false
  end
end
