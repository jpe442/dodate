class Todo < ApplicationRecord
  validates :task, :user_id, :workflow_pos, :tag, :etc, 

  belongs_to :user
end
