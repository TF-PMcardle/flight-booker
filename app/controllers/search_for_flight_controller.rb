class SearchForFlightController < ApplicationController
    def search

        @results = CreateFlight.all
        if (params[:search] != "")      
           @results = @results.where("lower(depairport) LIKE :search", search: "%#{params[:search]}")  
        end
        if (params[:search_arr_airport] != "")
           @results = @results.where("lower(arrairport) LIKE :search_arr_airport", search_arr_airport: "%#{params[:search_arr_airport]}")
        end
        if (params[:search_dep_date] != "")
            @results = @results.where("lower(datetime) LIKE :search_dep_date", search_dep_date: "%#{params[:search_dep_date]}")
        end
    end
end

