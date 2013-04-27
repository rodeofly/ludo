class AddExerciceIdToCorrections < ActiveRecord::Migration
  def change
    add_column :corrections, :exercice_id, :integer

  end
end
