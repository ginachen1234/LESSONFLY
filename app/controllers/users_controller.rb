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
end
