class CreateOrderSuppliers < ActiveRecord::Migration
  def change
    create_table :order_suppliers do |t|
      t.integer :order_id
      t.integer :supplier_id
      t.integer :group_id
      t.integer :position

      t.timestamps
    end
  end
end
