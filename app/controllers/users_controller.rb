class UsersController < ApplicationController
  def index
    @teachers = User.where.not(latitude: nil, longitude: nil).where(teacher: true)

    # @teachers = User.where.not(latitude: nil, longitude: nil)
    # @teachers = User.where.not(latitude: nil, longitude: nil)

    @markers = @teachers.map do |teacher|
      {
        lng: teacher.longitude,
        lat: teacher.latitude
      }
    end

  end

  def show
    @user = User.find(params[:id])
    @markers = [{lng: @user.longitude,lat: @user.latitude}]
  end
end
