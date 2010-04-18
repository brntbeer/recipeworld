class RemoveProfiles < ActiveRecord::Migration
  def self.up
    drop_table :profiles
  end

  def self.down
    create_table :profiles do |t|
      t.text :bio
      t.integer :user_id

      t.timestamps
    end
  end
end
