class PostusersController < ApplicationController
  def create
    User.create(name:params[:name], age:params[:age], intro:params[:intro])
  end
end
