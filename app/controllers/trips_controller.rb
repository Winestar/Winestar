class TripsController < ApplicationController
	#
  def new
  	@trip = Trip.new
    @available_now = :available_now
  	render :new
  end

  # creates new trip in db
  def create
  trip = Trip.new(trip_params)
    if trip.save
      # session[:user_id] = trip.user_id
      redirect_to signup_path
    else
      redirect_to signup_path
    end
  end

  # show current trip
  def show
  end

  def trip_params
    params.require(:trip).permit(:available_now, :arrival_date, :departure_date, :number_of_people, :start_location, :end_location, :price_tag)
  end

end
