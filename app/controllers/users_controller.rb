class UsersController < ApplicationController
  def index
    @teachers = User.where(teacher: true)
    # if current_user.teacher
    #   @users = User.all
    # else
    #   @teachers = User.where(role: "teacher")
    # end
  end

  def show
    @user = User.find(params[:id])
  end
end