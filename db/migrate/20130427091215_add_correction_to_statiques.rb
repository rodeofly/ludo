class AddCorrectionToStatiques < ActiveRecord::Migration
  def change
    add_column :statiques, :correction, :boolean

  end
end
