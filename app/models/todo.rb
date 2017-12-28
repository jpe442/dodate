class Todo < ApplicationRecord
  validates :task, :user_id, :workflow_pos, :tag, :etc, presence: true

  belongs_to :user,
    class_name: :User,
    primary_key: :id,
    foreign_key: :user_id
end
