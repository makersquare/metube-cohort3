class Video < ActiveRecord::Base

  belongs_to :user
  has_many :ratings

  after_create :youtube_query

  validates :user_id, :youtube_id, :title, presence: true

  def avg_rating
    total = 0.0
    self.ratings.to_a.each do |rating|
      total += rating.value
    end
    if self.ratings.count == 0
      return 0
    else
      return total / self.ratings.count
    end
  end

  def youtube_query
    response = Unirest.get("https://www.googleapis.com/youtube/v3/videos?part=snippet%2C+statistics&id=020sZ0PY8ko&key=#{ENV['YOUTUBE_API_TOKEN']}")
    self.description = response.body["items"][0]['snippet']['description']
    self.save
  end
end