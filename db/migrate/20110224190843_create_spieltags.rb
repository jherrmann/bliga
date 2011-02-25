class CreateSpieltags < ActiveRecord::Migration
  def self.up
    create_table :spieltags do |t|
      t.integer :saison
      t.integer :nummer
      t.datetime :datum

      t.timestamps
    end
  end

  def self.down
    drop_table :spieltags
  end
end
