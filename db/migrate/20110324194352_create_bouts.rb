class CreateBouts < ActiveRecord::Migration
  def self.up
    create_table :bouts do |t|
      t.integer :id
      t.integer :fighter1
      t.integer :fighter2
      t.integer :referee
      t.integer :event_id
      t.date :date

      t.timestamps
    end
  end

  def self.down
    drop_table :bouts
  end
end
