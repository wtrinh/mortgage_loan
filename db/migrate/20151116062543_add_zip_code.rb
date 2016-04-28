class AddZipCode < ActiveRecord::Migration
  def change
  	remove_column :properties, :zip, :string
  	remove_column :properties, :source_of_down_payemnt, :string
  	add_column :properties, :zip_code, :string
  	add_column :properties, :source_of_down_payment, :string
  end
end
