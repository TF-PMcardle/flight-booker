class PassengersController < ApplicationController
    def index
    end

    def new
        @Passenger = Passenger.new
    end

    def update
        Booking.last.passenger_id = Passenger.last.id
        redirect_to bookings_path
    end

    def create
    	@Passenger = Passenger.new(passengers_params)
    	if @Passenger.save

            session[:passenger_id] = @Passenger.id
            Passenger.first.bookings.last.update_attribute(:passenger_id, @Passenger.id)
    		redirect_to bookings_path, notice: "successfully created booking"
    	else
    		render :new
    end
end




private

def passengers_params
    params.permit(:fname, :sname, :email)
end

end
