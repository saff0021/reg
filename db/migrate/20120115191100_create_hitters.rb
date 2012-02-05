class CreateHitters < ActiveRecord::Migration
  def change
    create_table :hitters do |t|
      t.string :name
      t.string :pos
      t.string :pos2
      t.string :tm
      t.integer :cost
      t.boolean :selected

      t.timestamps
    end
  end
end
