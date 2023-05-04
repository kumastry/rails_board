class PostsController < ApplicationController
  def show
    @posts = Post.all
  end

  def create
    @posts = Post.new(post_params)
    puts @posts
    if @posts.save
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
