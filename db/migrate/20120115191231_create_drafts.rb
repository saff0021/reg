class CreateDrafts < ActiveRecord::Migration
  def change
    create_table :drafts do |t|
      t.string :player_type
      t.integer :player_num
      t.integer :team_id

      t.timestamps
    end
  end
end
