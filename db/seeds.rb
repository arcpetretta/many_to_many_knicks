
knicks = Team.create(:team_name => 'Knicks', :home_city => 'New York')

thunder = Team.create(:team_name =>'Thunder', :home_city => 'Oklahoma City')

knicks.games.create([{:location =>'Oklahoma City', :opposing_team => 'Thunder', :game_date => '2015-03-11'},
             {:location =>'Chicago', :opposing_team => 'Bulls', :game_date => '2015-03-15'}])

thunder.games.create([{:location =>'Oklahoma City', :opposing_team => 'Knicks', :game_date => '2015-03-11'},
                      {:location =>'Memphis', :opposing_team => 'Grizzlies', :game_date => '2015-03-15'}])

Player.create([{:team_id => 1, :name => 'Arron Afflalo', :jersey_number => 4, :position => 'SG'},
               {:team_id => 1, :name => 'Lou Amundson', :jersey_number =>17 , :position => 'PF'},
               {:team_id => 1, :name => 'Carmelo Anthony', :jersey_number =>7 , :position => 'SF'},
               {:team_id => 1, :name => 'Jose Calderon', :jersey_number => 3 , :position => 'PG'},
               {:team_id => 1, :name => 'Cleanthony Early', :jersey_number => 11 , :position => 'SF'},
               {:team_id => 1, :name => 'Langston Galloway', :jersey_number => 2 , :position => 'PG'},
               {:team_id => 1, :name => 'Jerian Grant', :jersey_number => 13 , :position => 'PG'},
               {:team_id => 1, :name => 'Robin Lopez', :jersey_number => 8, :position => 'C'},
               {:team_id => 1, :name => 'Kyle O\'Quinn', :jersey_number =>9 , :position => 'PF'},
               {:team_id => 1, :name => 'Kristaps Porzingis', :jersey_number => 6 , :position => 'PF'},
               {:team_id => 1, :name => 'Derrick Williams', :jersey_number =>23 , :position => 'PF'},
               {:team_id => 2, :name => 'Russell Westbrook', :jersey_number =>0 , :position => 'PG'},
               {:team_id => 2, :name => 'Andre Roberson', :jersey_number =>21 , :position => 'SG'},
               {:team_id => 2, :name => 'Kevin Durant', :jersey_number =>35 , :position => 'SF'},
               {:team_id => 2, :name => 'Serge Ibaka', :jersey_number =>9 , :position => 'PF'},
               {:team_id => 2, :name => 'Steven Adams', :jersey_number =>12 , :position => 'C'}])



# GameTeam.create([{:team_id => 1, :game_id => 1 }])


      # t.string :location, null: false
      # t.string :opposing_team, null: false
      # t.date :game_date, null: false
