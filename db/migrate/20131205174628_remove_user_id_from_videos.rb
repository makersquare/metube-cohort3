class RemoveUserIdFromVideos < ActiveRecord::Migration
  def change
    remove_column :videos, :user_id, :string
  end
end
