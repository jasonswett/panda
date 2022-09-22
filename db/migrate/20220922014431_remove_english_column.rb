class RemoveEnglishColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :phrases, :english
  end
end
