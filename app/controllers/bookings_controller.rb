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
    	
        session[:booking_id] = @booking.id
    	redirect_to passengers_path, notice: "successfully created booking"
        #@booking.flightid = flightselect.id
    end
    		
    



 
end

private

def bookings_params
    params.permit(:id, :flight_id, :fname, :sname, :email, :passportnum, :dateofbirth)


#def set_booking
#  @bookings = Booking.find(params[:id])
#end
end

