class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text      :content
      t.string    :image
      t.bigint :group_id,foreign_key: true
      t.bigint :user_id,foreign_key: true
      t.bigint :room_id,foreign_key: true
      t.integer :oppo_id
      t.timestamps
    end
  end
end
