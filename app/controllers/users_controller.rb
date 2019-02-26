class UsersController < ApplicationController
  def index
    @users = User.all
    @teachers = User.where(role: "teacher")
  end

  def show
    @user = User.find(params[:id])
  end
end
