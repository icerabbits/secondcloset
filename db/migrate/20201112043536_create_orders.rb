class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.belongs_to :customer
      t.float :order_cost

      t.timestamps
    end
  end
end
