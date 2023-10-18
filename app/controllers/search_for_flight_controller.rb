class SearchForFlightController < ApplicationController
    def search
            @parameter = params[:search]
            @results = CreateFlight.all.where("lower(depairport) LIKE :search", search: "%#{@parameter}")
    end
end

