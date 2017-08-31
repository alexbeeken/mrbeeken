class VideosController < ApplicationController
  def show
    @video = Video.find(params[:id])
  end

  def index
    @videos = Video.order(post_date: :desc).to_a
  end
end
