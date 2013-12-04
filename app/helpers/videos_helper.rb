module VideosHelper
  def rate_links(range)
    result = range.flat_map { |v| rate_link v }
    result.join(' ').html_safe
  end

  def rate_link(value)
    options = {}
    options[:method] = :post
    options[:class] = "rating"
    options[:class] += " selected" if current_rating == value
    options[:id] = "rating_#{value}"
    link_to value, rate_video_path(value: value), options
  end

  def current_rating
    rating = @video.ratings.where(user_id: current_user.id).first
    rating.value if rating
  end
end
