class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def new
    @posts = Post.all
    @post = Post.new()
  end

  def index
    @posts = Post.paginate(:page => params[:page]).order(created_at: :desc).to_a
    @featured = @posts.shift if [nil, "1"].include?(params[:page])
  end

  def edit
    @posts = Post.all
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(
      title: post_params[:title],
      summary: post_params[:summary],
      content: post_params[:content],
      thumbnail: post_params[:thumbnail],
      audio: post_params[:audio]
    )
    redirect_to '/' + ENV['SECRET_URL'] + '/' + @post.id.to_s + '/edit'
  end

  def create
    @post = Post.new()
    @post.update(
      title: post_params[:title],
      summary: post_params[:summary],
      content: post_params[:content],
      thumbnail: post_params[:thumbnail],
      audio: post_params[:audio]
    )
    @post.save
    redirect_to root_url
  end

  def delete
    @post = Post.find(params[:id])
    @post.delete
    redirect_to ENV['SECRET_URL'] + '/' + Post.last.id.to_s + '/edit'
  end

  private

  def post_params
    params.permit(:title, :summary, :content, :utf8, :authenticity_token, :commit, :thumbnail, :audio)
  end
end
