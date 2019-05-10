class Group < ApplicationRecord
  has_many :members
  has_many :users, through: :members
  belongs_to :room
end
