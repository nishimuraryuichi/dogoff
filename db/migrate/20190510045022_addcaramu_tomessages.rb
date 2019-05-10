class AddcaramuTomessages < ActiveRecord::Migration[5.2]
  def change
    t.references :room, foreign_key: true
  end
end
