class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.float :length
      t.float :width
      t.float :height
      t.float :weight
      t.float :value
      t.integer :item_number
      t.belongs_to :order

      t.timestamps
    end
  end
end
