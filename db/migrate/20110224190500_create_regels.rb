class CreateRegels < ActiveRecord::Migration
  def self.up
    create_table :regels do |t|
      t.string :typ
      t.integer :punkte

      t.timestamps
    end
  end

  def self.down
    drop_table :regels
  end
end
