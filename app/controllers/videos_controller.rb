class VideosController < ApplicationController
  def index
    @videos = Video.order(post_date: :desc).to_a
  end
end
