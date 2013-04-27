class CreateDynamiques < ActiveRecord::Migration
  def change
    create_table :dynamiques do |t|
      t.boolean :bac
      t.boolean :correction
      t.string :titre

      t.timestamps
    end
  end
end
