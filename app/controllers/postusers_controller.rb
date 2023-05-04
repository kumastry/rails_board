#usersをdbへインサートするためのpost処理コントローラ

class PostusersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to '/users'
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :age, :intro)
   end
end
