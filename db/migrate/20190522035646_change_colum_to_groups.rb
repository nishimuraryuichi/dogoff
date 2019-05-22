class ChangeColumToGroups < ActiveRecord::Migration[5.2]
  def change
    change_column :groups,:image,:string,null:true
  end
end
