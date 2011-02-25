class CreateLigas < ActiveRecord::Migration
  def self.up
    create_table :ligas do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :ligas
  end
end
