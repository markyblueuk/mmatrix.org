class CreateWeightClasses < ActiveRecord::Migration
  def self.up
    create_table :weight_classes do |t|
      t.string :name
      t.integer :weight_from
      t.integer :weight_to

      t.timestamps
    end
  end

  def self.down
    drop_table :weight_classes
  end
end
