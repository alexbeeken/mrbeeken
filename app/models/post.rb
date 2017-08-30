class Post < ApplicationRecord
  def display_time
    created_at.strftime('%B %d %Y')
  end

  def display_image
    return thumbnail if Rails.application.assets.find_asset(thumbnail)
    'missing.jpg'
  end
end
