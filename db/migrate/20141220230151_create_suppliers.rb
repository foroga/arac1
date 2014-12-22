class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :email
      t.integer :telephone
      t.string :url
      t.boolean :active
      t.string :note
      t.string :frecuency
      t.integer :ranking
      t.integer :account_id
      t.integer :group_id
      t.integer :watcher_unit_id

      t.timestamps
    end
  end
end
