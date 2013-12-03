class Video < ActiveRecord::Base
  belongs_to :user
  has_many :ratings

  validates :user_id, :youtube_id, :title, presence: true
end