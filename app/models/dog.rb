class Dog < ApplicationRecord
  belongs_to :user

  has_one_attached :image

  validates :image, presence: true
  validates :name, presence: true
  validates :breed, presence: true
  validates :age, presence: true
  validates :sex, presence: true
  validates :prefecture, presence: true
  validates :municipalities, presence: true
  validates :town, presence: true
end
