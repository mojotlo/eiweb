class ChangeUserDefaultAttributes < ActiveRecord::Migration
  def self.up
       change_column :users, :weekly, :boolean, :default => true, :null => false
       change_column :users, :all, :boolean, :default => true, :null => false
    
  end

  def self.down
  end
end
