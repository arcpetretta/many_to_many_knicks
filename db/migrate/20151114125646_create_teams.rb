class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :team_name, null: false
      t.string :home_city, null: false

      t.timestamps(null: false)
    end
  end
end
