class RenameWordsToPhrases < ActiveRecord::Migration[7.0]
  def change
    rename_table :words, :phrases
  end
end
