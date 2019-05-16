class Message < ApplicationRecord
  belongs_to :user
  belongs_to :group,optional: true
  belongs_to :room,optional: true
end
