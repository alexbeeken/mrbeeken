class Post < ApplicationRecord
  def display_time
    created_at.strftime('%B %d %Y')
  end
end
