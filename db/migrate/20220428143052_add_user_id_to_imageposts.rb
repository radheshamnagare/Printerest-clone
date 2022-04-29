class AddUserIdToImageposts < ActiveRecord::Migration[7.0]
  def change
    add_column :imageposts, :user_id, :integer
    add_index :imageposts, :user_id
  end
end
