class Video < ActiveRecord::Base
  validates :youtube_id, :title, presence: true
end