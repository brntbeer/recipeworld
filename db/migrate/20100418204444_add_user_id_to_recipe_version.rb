class AddUserIdToRecipeVersion < ActiveRecord::Migration
  def self.up
    change_table :recipe_versions do |t|
      t.integer :user_id
    end
  end

  def self.down
    change_table :recipe_versions do |t|
      t.remove :user_id
    end
  end
end
