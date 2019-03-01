class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    User.reindex
    if params[:query].present?
      @teachers = User.search(params[:query])
      markers
    else
      @teachers = User.all.where.not(latitude: nil, longitude: nil).where(teacher: true)
      markers
    end
  end

  def show
    @user = User.find(params[:id])
    @markers = [{ lng: @user.longitude, lat: @user.latitude }]
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(current_user)
  end

  private

  def markers
    @markers = @teachers.map do |teacher|
      {
        lng: teacher.longitude,
        lat: teacher.latitude
      }
    end
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :teacher, :address, :location, :skill, :biography)
  end
end
