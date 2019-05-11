class AddcaramuTogroups < ActiveRecord::Migration[5.2]
  def change
    add_reference :groups, :room, foreign_key: true
  end
end
