class FlightController < ApplicationController
    def new
        @flights = Flight.new
    end

    def create
    	@flights = Flight.new(flights_params)
    	if @flights.save
            session[:flight_id] = @flight.id
    		redirect_to root_path, notice: "successfully created flight"
    	else
    		render :new
    end
end

private

def flights_params
    params.permit(:depairport, :arrairport, :datetime)
end

end