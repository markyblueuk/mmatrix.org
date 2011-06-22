class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :firstname
      t.string :lastname
      t.string :address_first_line
      t.string :address_second_line
      t.string :address_town
      t.string :address_postcode
      t.string :phone_mobile
      t.string :phone_landline
      t.string :account_type
      t.string :status
      t.integer :range
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
