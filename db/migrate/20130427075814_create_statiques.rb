class CreateStatiques < ActiveRecord::Migration
  def change
    create_table :statiques do |t|
      t.boolean :bac
      t.string :titre

      t.timestamps
    end
  end
end
