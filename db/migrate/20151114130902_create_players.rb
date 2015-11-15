class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name, null: false
      t.integer :jersey_number, null: false
      t.string :position, null: false
      t.references :team, null: false

      t.timestamps(null: false)
    end
  end
end
