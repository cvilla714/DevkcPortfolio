class AddAuthorIdToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :author_id, :integer
  end
end
