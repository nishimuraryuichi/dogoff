class RemoveImageToDogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs,:image
  end
end
