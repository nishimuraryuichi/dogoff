class AddColTodogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs,:image,:string, null: false
  end
end
