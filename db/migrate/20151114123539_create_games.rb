class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :location, null: false
      t.string :opposing_team, null: false
      t.date :game_date, null: false

      t.timestamps(null: false)
    end
  end
end
