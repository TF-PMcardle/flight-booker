class BookingsController < ApplicationController
    def index
        @bookings = Booking.all
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
        @booking = Booking.new(bookings_params)
    	if @booking.save
            session[:booking_id] = @booking.id
    		redirect_to root_path, notice: "successfully created booking"
    	else
    		render :new
    end

    def update
        respond_to do |format|
          if @booking.update(booking_params)
            format.html { redirect_to booking_url(@create_flight), notice: "Booking details were successfully updated." }
          else
            format.html { render :edit, status: :unprocessable_entity }
          end
        end
      end

 
end

private

def bookings_params
    params.permit(:id, :flightid, :fname, :sname, :email, :passportnum, :dateofbirth)
end

end
