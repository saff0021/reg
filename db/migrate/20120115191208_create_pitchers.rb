class CreatePitchers < ActiveRecord::Migration
  def change
    create_table :pitchers do |t|
      t.string :name
      t.string :pos
      t.string :tm
      t.integer :cost
      t.boolean :selected

      t.timestamps
    end
  end
end
