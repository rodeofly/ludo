class CreateSujets < ActiveRecord::Migration
  def change
    create_table :sujets do |t|

      t.timestamps
    end
  end
end
