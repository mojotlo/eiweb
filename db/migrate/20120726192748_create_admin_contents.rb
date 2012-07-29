class CreateAdminContents < ActiveRecord::Migration
  def self.up
    create_table :admin_contents do |t|
      t.string :map_file_name
      t.string :map_content_type
      t.integer :map_file_size
      t.date :map_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :admin_contents
  end
end
