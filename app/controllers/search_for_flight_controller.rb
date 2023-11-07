class SearchForFlightController < ApplicationController
    def search
        @results = Flight.all

        if (params[:search] != "")      
           @results = @results.where("lower(dep_airport_id) LIKE :search", search: "%#{params[:search]}")  
        end
        if (params[:search_arr_airport] != "")
           @results = @results.where("lower(arr_airport_id) LIKE :search_arr_airport", search_arr_airport: "%#{params[:search_arr_airport]}")
        end
        if (params[:search_dep_date] != "")
            @results = @results.where("lower(date_time) LIKE :search_dep_date", search_dep_date: "%#{params[:search_dep_date]}%")
        end
    end
end

