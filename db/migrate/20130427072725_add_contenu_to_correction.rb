class AddContenuToCorrection < ActiveRecord::Migration
  def change
    add_column :corrections, :contenu, :text

  end
end
