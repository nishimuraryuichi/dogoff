class Group < ApplicationRecord
  has_many :members
  has_many :messages
  has_many :users, through: :members
  has_one :room
  
  has_one_attached :image
end
