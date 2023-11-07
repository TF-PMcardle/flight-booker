class BookingsController < ApplicationController
  #before_action :set_booking
    def index
        @bookings = Booking.all
    end

    def edit
       
    end

    def destroy
        @bookings = Booking.find(params[@bookings.id])
        @bookings.destroy
        redirect_to bookings_path
        flash[:success] = "Booking was deleted successfully"
    end
    
    def new
        @booking = Booking.new
    end

    def create
    	@booking = Booking.new(flight_id: params[:flight_id], passenger_id: 1)
        if @booking.save
    	    redirect_to passengers_path(booking_id: @booking.id)
        else
            redirect_to bookings_path            
        end
    end

private
    def booking_params
        params.require(:booking).permit(:flight_id, :passenger_id)
    end
end

