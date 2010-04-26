class AddBioToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.text :bio 
    end
  end

  def self.down
    change_table :users do |t|
      t.remove :bio
    end
  end
end
