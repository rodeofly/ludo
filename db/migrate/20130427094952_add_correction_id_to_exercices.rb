class AddCorrectionIdToExercices < ActiveRecord::Migration
  def change
    add_column :exercices, :correction_id, :integer

  end
end
