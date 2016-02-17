class PostsController < ApplicationController

  def index
    @post = Post.new
    @posts = Post.paginate(:page => params[:page], :per_page => 8).order(created_at: :desc)
  end

  def create
    @posts = Post.paginate(:page => params[:page], :per_page => 8).order(created_at: :desc)
    @post = Post.new(post_params)
    if @post.save
      flash[:info] = "Posted!"
      redirect_to root_url
    else
      render 'index'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :author, :user_id)
  end

end
Post.paginate(:page => 1, :per_page => 2)