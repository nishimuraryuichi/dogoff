class AddColumToGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :any, :string, null: true
  end
end
