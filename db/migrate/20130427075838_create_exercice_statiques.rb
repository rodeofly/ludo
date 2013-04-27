class CreateExerciceStatiques < ActiveRecord::Migration
  def change
    create_table :exercice_statiques do |t|
      t.integer :exercice_id
      t.integer :statique_id

      t.timestamps
    end
  end
end
