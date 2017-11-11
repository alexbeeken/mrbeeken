class Post < ApplicationRecord
  self.per_page = 5

  def display_time
    created_at.strftime('%B %d %Y')
  end

  def display_image
    return thumbnail if Rails.application.assets_manifest.files.values.map{|v| v['logical_path']}.include?("#{thumbnail}")
    'missing.jpg'
  end
end
