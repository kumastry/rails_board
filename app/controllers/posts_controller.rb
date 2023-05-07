class PostsController < ApplicationController
  def show
    @posts = Post.all.includes(:user)
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to '/posts/show'
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:user_id, :content)
  end
end
