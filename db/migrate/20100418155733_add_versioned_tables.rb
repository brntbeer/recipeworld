class AddVersionedTables < ActiveRecord::Migration
  def self.up
    create_table :recipe_versions do |t|
      t.integer :recipe_id
      t.string :title
      t.text :ingredients
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :version

      t.timestamps

      add_column :recipes, :version, :integer
    end
  end

  def self.down
    drop_table :recipe_versions
    remove_column :chapters, :version
  end
end
