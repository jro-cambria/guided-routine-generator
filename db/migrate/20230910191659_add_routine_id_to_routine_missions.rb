class AddRoutineIdToRoutineMissions < ActiveRecord::Migration[7.0]
  def change
    add_reference :routine_missions, :routine, null: false, foreign_key: true
  end
end
