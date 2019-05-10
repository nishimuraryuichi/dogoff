class Room < ApplicationRecord
<<<<<<< HEAD
  has_many :messages
  has_many :users, through: :user_rooms
  has_many :user_rooms
=======
  has_many :user_rooms
  has_many :users,through: :user_room
  has_many :messages
>>>>>>> master
  belongs_to :group
end
