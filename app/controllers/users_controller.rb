class UsersController < ApplicationController
  def index
    @teachers = User.where(teacher: true)
  end

  def show
    @user = User.find(params[:id])
  end
end
