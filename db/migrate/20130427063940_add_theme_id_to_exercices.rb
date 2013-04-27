class AddThemeIdToExercices < ActiveRecord::Migration
  def change
    add_column :exercices, :theme_id, :integer

  end
end
