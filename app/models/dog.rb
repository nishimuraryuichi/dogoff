class Dog < ApplicationRecord
  has_one :user

  has_one_attached :image
end
