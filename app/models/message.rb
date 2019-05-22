class Message < ApplicationRecord
  belongs_to :user
  belongs_to :group,optional: true
  belongs_to :room,optional: true

  # def message_show
  #   Message.where(user_id: 'current_user',oppo_id: 'user_id')
  #   binding.pry
  # end
end
