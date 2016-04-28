class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :borrower_id
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :rent_or_own
      t.string :address_type
      t.integer :years_of_residence

      t.timestamps
    end
  end
end
