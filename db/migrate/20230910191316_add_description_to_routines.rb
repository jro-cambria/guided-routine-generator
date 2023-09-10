class AddDescriptionToRoutines < ActiveRecord::Migration[7.0]
  def change
    add_column :routines, :description, :string
  end
end
