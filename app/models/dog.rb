class Dog < ApplicationRecord
  belongs_to :user

  has_one_attached :image

  validates :image,:name,:breed,:age,:sex,:prefecture,:municipalities,:town, presence: true  
end
