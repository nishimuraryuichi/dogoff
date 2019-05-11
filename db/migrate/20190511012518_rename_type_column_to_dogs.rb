class RenameTypeColumnToDogs < ActiveRecord::Migration[5.2]
  def change
    rename_column :dogs,:type,:breed
  end
end
