class Video < ActiveRecord::Base
  belongs_to :user
  has_many :ratings

  validates :user_id, :youtube_id, :title, presence: true

  def avg_rating
    self.ratings.average('value') || 0
  end
end