class AddcaramuTouserRoom < ActiveRecord::Migration[5.2]
  def change
    t.references :user, foreign_key: true
    t.references :room, foreign_key: true
  end
end
