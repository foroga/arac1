class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.integer :group_id
      t.string :name
      t.string :email
      t.integer :telefone
      t.boolean :active
      t.string :note
      t.integer :account_id

      t.timestamps
    end
  end
end
