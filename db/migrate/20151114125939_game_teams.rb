class GameTeams < ActiveRecord::Migration
  def change
    create_table :game_teams do |t|
      t.references :game, null: false
      t.references :team, null: false
    end
  end
end
