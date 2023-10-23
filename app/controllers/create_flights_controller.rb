class CreateFlightsController < ApplicationController
  before_action :set_create_flight, only: [:show, :edit, :update, :destroy ]

  # GET /create_flights or /create_flights.json
  def index
    @create_flights = CreateFlight.all
  end

  # GET /create_flights/1 or /create_flights/1.json
  def show
  end

  # GET /create_flights/new
  def new
    @create_flight = CreateFlight.new
  end

  # GET /create_flights/1/edit
  def edit
  end

  # POST /create_flights or /create_flights.json
  def create
    @create_flight = CreateFlight.new(create_flight_params)

    respond_to do |format|
      if @create_flight.save
        format.html { redirect_to create_flight_url(@create_flight), notice: "Create flight was successfully created." }
        format.json { render :show, status: :created, location: @create_flight }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @create_flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /create_flights/1 or /create_flights/1.json
  def update
    respond_to do |format|
      if @create_flight.update(create_flight_params)
        format.html { redirect_to create_flight_url(@create_flight), notice: "Create flight was successfully updated." }
        format.json { render :show, status: :ok, location: @create_flight }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @create_flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_flights/1 or /create_flights/1.json
  def destroy
    @create_flight.destroy!

    respond_to do |format|
      format.html { redirect_to create_flights_url, notice: "Create flight was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_create_flight
      @create_flight = CreateFlight.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def create_flight_params
      params.require(:create_flight).permit(:depairport, :arrairport, :datetime)
    end
end
