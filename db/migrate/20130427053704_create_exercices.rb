class CreateExercices < ActiveRecord::Migration
  def change
    create_table :exercices do |t|
      t.boolean :bac
      t.integer :millesime
      t.string :theme
      t.text :contenu

      t.timestamps
    end
  end
end
