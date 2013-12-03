class MakeYouTubeIdRequiredOnVideos < ActiveRecord::Migration
  def change
    change_column_null :videos, :youtube_id, false

    add_index :videos, :youtube_id
  end
end
