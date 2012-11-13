class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :name
      t.time :time
      t.date :date
      t.string :details
      t.boolean :pending

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
