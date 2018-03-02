class PostsController < ApplicationController
  include ApplicationHelper
  def index
    @featured = Post.last
    @posts = Post.non_featured(@featured)
    @featured_content = markdown(@featured.content)
  end

  def show
    @featured = Post.find(params[:id])
    @featured_content = markdown(@featured.content)
    @posts = Post.non_featured(@featured)
  end
end
