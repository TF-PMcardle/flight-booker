class FlightController < ApplicationController
    def new
        @flight = Flight.new
    end
end