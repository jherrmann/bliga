class CreatePaarungs < ActiveRecord::Migration
  def self.up
    create_table :paarungs do |t|
      t.integer :spieltag_id
      t.integer :heim
      t.integer :gast
      t.datetime :start
      t.integer :torh
      t.integer :torg
      t.boolean :verlaengerung
      t.boolean :elfmeter

      t.timestamps
    end
  end

  def self.down
    drop_table :paarungs
  end
end
