class AddPasswordToEmail < ActiveRecord::Migration
  def self.up
    add_column :emails, :password, :string
  end

  def self.down
    remove_column :emails, :password
  end
end
