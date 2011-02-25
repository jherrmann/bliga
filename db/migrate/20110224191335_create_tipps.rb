class CreateTipps < ActiveRecord::Migration
  def self.up
    create_table :tipps do |t|
      t.integer :user_id
      t.integer :paarung_id
      t.integer :toreheim
      t.integer :toregast

      t.timestamps
    end
  end

  def self.down
    drop_table :tipps
  end
end
