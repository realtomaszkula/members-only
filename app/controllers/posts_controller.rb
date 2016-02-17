class PostsController < ApplicationController
  def new
  end

  def create
    params[:post][:user_id] = current_user.id
    @post = Post.new(post_params)
    if @post.save
      flash[:info] = "Posted!"
      redirect_to root_url
    else
      #
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :user_id)
  end

end
