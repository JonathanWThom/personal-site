class PostsController < ApplicationController
  def index
    @posts = Post.where("id != ?", Post.last.id).reverse_order
    @featured = Post.last
    github = Github.new
  end

  def show
    @featured = Post.find(params[:id])
    @posts = Post.where("id != ?", @featured.id).reverse_order
    github = Github.new
  end
end
