class CreateWords < ActiveRecord::Migration[7.0]
  def change
    create_table :words do |t|
      t.string :english
      t.string :pinyin
      t.string :chinese_simplified

      t.timestamps
    end
  end
end
