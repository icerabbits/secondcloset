class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.text :discount
      t.float :unit_charge
      t.float :value_charge
      t.integer :item_stored

      t.timestamps
    end
  end
end
