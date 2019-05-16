class AddColumnToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :oppo_id, :integer
  end
end
