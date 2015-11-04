class TripController < ApplicationController
  
	#
  def new
  	@trips = Trip.new
    @available_now = :available_now
  	render :new
  end

  # creates new trip in db
  def create
  	trips = Trip.all(trips_params)
  end

  # show current trip
  def show
  end
end
