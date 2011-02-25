class CreateVereins < ActiveRecord::Migration
  def self.up
    create_table :vereins do |t|
      t.string :name
      t.string :logo

      t.timestamps
    end
  end

  def self.down
    drop_table :vereins
  end
end
