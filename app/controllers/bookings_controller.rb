class BookingsController < ApplicationController



  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @user = current_user
    @teacher = User.find(params[:user_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @booking.teacher_id = User.find(params["booking"]["teacher_id"].to_i).id
    @booking.student_id = current_user.id
    if @booking.save
      redirect_to user_booking_path(current_user,@booking)
    else
      redirect_to users_path()
    end
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
