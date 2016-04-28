class RemoveAddress < ActiveRecord::Migration
  def change
  	remove_column :borrowers, :home_address_line_1, :string
  	remove_column :borrowers, :home_address_line_2, :string
  	remove_column :borrowers, :city, :string
  	remove_column :borrowers, :state, :string
  	remove_column :borrowers, :zip_code, :string
  	remove_column :borrowers, :own_or_rent, :boolean
  	remove_column :borrowers, :years_of_residence, :number
  	remove_column :borrowers, :mailing_address_line_1, :string
  	remove_column :borrowers, :mailing_address_line_2, :string
  end
end