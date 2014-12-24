class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :state
      t.datetime :date
      t.decimal :requested, precision: 16, scale: 3
      t.decimal :received, precision: 16, scale: 3
      t.decimal :priceini, precision: 16, scale: 3
      t.decimal :priceend, precision: 16, scale: 3

      t.timestamps
    end
  end
end
