class BookingsController < ApplicationController
  #before_action :set_booking
    def index
        @bookings = Booking.all
    end

    def edit
       
    end

    def destroy
        @booking = Booking.find(params[@booking.id])
        @booking.destroy
        redirect_to bookings_path
        flash[:success] = "Booking was deleted successfully"
    end
    
    def new
        @booking = Booking.new
    end

    def create
        @booking = Booking.new(bookings_params)
    	if @booking.save
            session[:booking_id] = @booking.id
    		redirect_to root_path, notice: "successfully created booking"
    	else
    		render :new
    end



 
end

private

def bookings_params
    params.permit(:id, :flightid, :fname, :sname, :email, :passportnum, :dateofbirth)
end

#def set_booking
#  @bookings = Booking.find(params[:id])
#end
end
