class AddTimeSlotToTodosTable < ActiveRecord::Migration[5.1]
  def change
    add_column :todos, :time_slot, :integer
  end


end
