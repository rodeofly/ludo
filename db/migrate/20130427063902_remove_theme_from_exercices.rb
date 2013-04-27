class RemoveThemeFromExercices < ActiveRecord::Migration
  def up
    remove_column :exercices, :theme
      end

  def down
    add_column :exercices, :theme, :string
  end
end
