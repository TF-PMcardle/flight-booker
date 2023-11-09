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
        params[:booking_id] = Booking.last.id
    	@Passenger = Passenger.new(passengers_params)
    	if @Passenger.save
            session[:passenger_id] = @Passenger.id
            #binding.pry
            if params[:value] == '2'
                redirect_to passengers_path
            else
                redirect_to bookings_path, notice: "successfully created booking"
            end
    	else
    		render :new
    end
end




private

def passengers_params
    params.permit(:fname, :sname, :email, :booking_id)
end

end
