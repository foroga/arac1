class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :email
      t.integer :telefone
      t.boolean :active
      t.string :dealtype
      t.string :note
      t.string :address
      t.integer :error_unit_id
      t.integer :acounting_unit_id
      t.integer :bill_unit_id
      t.integer :sw_unit_id
      t.integer :acount_id

      t.timestamps
    end
  end
end
