class PostsController < ApplicationController
  include ApplicationHelper
  def index
    @posts = Post.where("id != ?", Post.last.id).reverse_order
    @featured = Post.last
    @featured_content = FORMAT.call(@featured.content)
  end

  def show
    @featured = Post.find(params[:id])
    @featured_content = FORMAT.call(@featured.content)
    @posts = Post.where("id != ?", @featured.id).reverse_order
  end
end
