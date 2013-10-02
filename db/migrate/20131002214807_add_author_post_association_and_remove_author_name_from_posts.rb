class AddAuthorPostAssociationAndRemoveAuthorNameFromPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :author_id, :integer
  	remove_column :posts, :author_name
  	add_index :posts, :author_id
  end

  def down
  	remove_column :posts, :author_id, :integer
  	add_column :posts, :author_name
  end
end
