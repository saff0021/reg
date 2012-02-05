class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :team_name
      t.integer :spent
      t.integer :num_players
      t.string :image

      t.timestamps
    end
  end
end
