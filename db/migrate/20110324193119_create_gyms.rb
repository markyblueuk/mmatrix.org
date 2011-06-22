class CreateGyms < ActiveRecord::Migration
  def self.up
    create_table :gyms do |t|
      t.integer :id
      t.string :name
      t.string :description
      t.string :address_first_line
      t.string :address_second_line
      t.string :town
      t.string :postcode
      t.integer :phone
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :gyms
  end
end
