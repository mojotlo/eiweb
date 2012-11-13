class AddPasswordToEvent < ActiveRecord::Migration
  def self.up
    add_column :events, :password, :string
  end

  def self.down
    remove_column :events, :password
  end
end
