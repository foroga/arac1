class AddPersonFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :unit_id, :integer 
		add_column :users, :surname, :string
    add_column :users, :telefone, :integer 
		add_column :users, :active, :boolean 
		add_column :users, :note, :string
  end
end
