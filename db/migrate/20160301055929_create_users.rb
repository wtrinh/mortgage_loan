class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password_hash
      t.string :password_salt
      t.string :email

      t.timestamps
    end
  end
end
