class PostsController < ApplicationController

  def index
    @post = Post.new
    @posts = Post.order(created_at: :desc)
  end

  def create
    @posts = Post.order(created_at: :desc)
    @post = Post.new(post_params)
    if @post.save
      flash[:info] = "Posted!"
      redirect_to root_url
    else
      flash[:danger] = "Error!"
      render 'index'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :author, :user_id)
  end

end
