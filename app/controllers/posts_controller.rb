class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
  end

  def create
    Post.create(name: params[:name], content: params[:content])
    redirect_to("/posts/index")
  end

  def confirm
  end

  def detail
  end
end
