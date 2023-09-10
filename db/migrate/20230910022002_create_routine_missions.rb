class CreateRoutineMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :routine_missions do |t|
      t.references :route, null: false, foreign_key: true
      t.integer :sequence
      t.references :mission, null: false, foreign_key: true
      t.integer :time

      t.timestamps
    end
  end
end
