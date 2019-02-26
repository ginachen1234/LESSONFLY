class BookingsController < ApplicationController

  def show
  end

  def new
    @teacher = User.find(params[:user_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @booking.teacher = User.find(params[:user_id])
    @booking.student = current_user
    @booking.save
  end

  def edit
  end

  def destroy
  end

  private

  # def booking_params
  #   params.require(:booking).permit(:user_id)
  # end
end


#########################ALEX WAY##########################
 # def new
 #    @teacher = User.find(params[:user_id])
 #    @booking = Booking.new
 #  end

 #  def create
 #    @booking = Booking.new(booking_params)
 #    @booking.teacher = User.find(params[:user_id])
 #    @booking.student = current_user
 #    @booking.save
 #  end
