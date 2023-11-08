class BookingsController < ApplicationController
  #before_action :set_booking
    def index
        @bookings = Booking.all
    end

    def edit
        @booking = Booking.find(params[:id])
        render :edit
    end

    def update
        @booking = Passenger.find(params[:passenger_id])
        if @booking.update(params.require(:passenger).permit(:Passenger.fname, :Passenger.sname, :Passenger.email))
            flash[:success] = "Booking was updated successfully"
            redirect_to bookings_path
        else
            flash.now[:error] = "Booking update failed"
            render :edit
        end
    end

    def destroy
        @booking = Booking.find(params[:id])
        @booking.destroy
        flash[:success] = "Booking was deleted successfully"
        redirect_to bookings_path
        
    end
    
    def new
        @booking = Booking.new
    end

    def create
    	@booking = Booking.new(flight_id: params[:flight_id])
        if @booking.save
    	    redirect_to passengers_path(booking_id: @booking.id)
        else
            redirect_to bookings_path            
        end
    end

private
    def booking_params
        params.require(:booking).permit(:id, :flight_id, :passenger_id)
    end
end

