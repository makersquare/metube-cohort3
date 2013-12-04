class Rating < ActiveRecord::Base
  belongs_to :videos
  belongs_to :users

  validates :user_id, :video_id, presence: true
  validates :value, inclusion: { in: 1..5 }
end
