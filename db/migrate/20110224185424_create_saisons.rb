class CreateSaisons < ActiveRecord::Migration
  def self.up
    create_table :saisons do |t|
      t.datetime :start
      t.datetime :end
      t.string :name
      t.integer :liga_id

      t.timestamps
    end
  end

  def self.down
    drop_table :saisons
  end
end
