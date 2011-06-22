class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.integer :id
      t.string :name
      t.string :description
      t.date :date
      t.string :address_first_line
      t.string :address_second_line
      t.string :town
      t.string :postcode
      t.string :phone
      t.string :email
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
