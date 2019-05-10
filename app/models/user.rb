class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :messages
  has_many :members
  has_many :groups, through: :members
  has_many :user_rooms
  has_many :rooms, through: :user_rooms

  has_many :dogs
end
