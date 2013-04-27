class CreateExerciceDynamiques < ActiveRecord::Migration
  def change
    create_table :exercice_dynamiques do |t|
      t.integer :exercice_id
      t.integer :dynamique_id

      t.timestamps
    end
  end
end
