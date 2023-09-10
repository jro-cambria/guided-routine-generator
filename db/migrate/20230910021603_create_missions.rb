class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.string :name
      t.string :playlist_url
      t.text :how_to

      t.timestamps
    end
  end
end
