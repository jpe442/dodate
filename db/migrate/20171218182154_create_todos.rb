class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :task, null: false
      t.integer :etc, null: false
      t.string :workflow_pos, null: false
      t.text :notes
      t.string :tag, null: false
      t.integer :user_id, null: false
      t.date :start_time
      t.date :end_time

      t.timestamps
    end
    add_index :todos, :user_id
  end
end
