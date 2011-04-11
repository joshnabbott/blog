class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.datetime :published_at
      t.boolean :is_active, :null => false, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
