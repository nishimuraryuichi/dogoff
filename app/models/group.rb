class Group < ApplicationRecord
  has_many :members
  has_many :messages
  has_many :users, through: :members
  belongs_to :room,optional: true

  has_one_attached :image
end
