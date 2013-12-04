class User < ActiveRecord::Base
  has_many :videos
  has_many :ratings, through: :videos

  validates :first_name, :last_name, presence: true
  validates :email_address, presence: true, uniqueness: true
  def full_name
    "#{first_name} #{last_name}"
  end
end
