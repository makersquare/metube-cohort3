class User < ActiveRecord::Base
  has_many :videos

  def full_name
    "#{first_name} #{last_name}"
  end
end
