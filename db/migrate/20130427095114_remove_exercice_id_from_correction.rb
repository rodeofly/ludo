class RemoveExerciceIdFromCorrection < ActiveRecord::Migration
  def up
    remove_column :corrections, :exercice_id
      end

  def down
    add_column :corrections, :exercice_id, :integer
  end
end
