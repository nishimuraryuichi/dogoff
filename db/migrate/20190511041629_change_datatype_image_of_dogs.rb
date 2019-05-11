class ChangeDatatypeImageOfDogs < ActiveRecord::Migration[5.2]
  def change
    change_column :dogs,:image,:string,null: true
  end
end
