class TripsController < ApplicationController

	#new trips
  def new
    @trip = current_user.trips.new
    @available_now = :available_now
  	render :new
  end

  # creates new trip in db
  def create
  @trip = current_user.trips.create!(trip_params)

     respond_to do |format|

      if @trip.save
        # Tell the UserMailer to send a trip info after save
        UserMailer.trip_email(@trip).deliver

        format.html { redirect_to signup_path}
        format.json { render :show, status: :created, location: @trip }
      else
        format.html { redirect_to root_path}
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # show current trip
  def show
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:available_now, :arrival_date, :departure_date, :number_of_people, :start_location, :end_location, :price_range, :additional_info)
  end

end
