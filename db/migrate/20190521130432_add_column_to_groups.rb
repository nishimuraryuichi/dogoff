class AddColumnToGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :breed, :string, null: false
    add_column :groups, :town, :string, null: false
  end
end
