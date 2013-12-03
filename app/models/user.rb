class User < ActiveRecord::Base
  has_many :videos
  has_many :ratings, through: :videos
end
