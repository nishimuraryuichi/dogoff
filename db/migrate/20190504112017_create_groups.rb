class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string    :name, null:false
      t.string    :image,null:true
      t.string    :breed,null:false
      t.string    :town,null:false
      t.string    :any,null:false
      t.timestamps
    end
  end
end
