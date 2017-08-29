class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @timestamp = @post.created_at.strftime('%B %d %Y')
    render 'post/show'
  end
end
