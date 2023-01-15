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

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.name = params[:name]
    @post.content = params[:content]
    @post.save
    redirect_to("/posts/index")
  end

end
