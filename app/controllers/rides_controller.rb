class RidesController < ApplicationController
	def index
		ride_count = Ride.count
		@count = ride_count
		@ride = Ride.all.includes(:driver)
	end

	def create
		@ride = Ride.new(ride_params)
		  if @ride.save
			  flash.alert = "Ride created"
			  redirect_to rides_path
		  else
			  flash.alert = "Invalid Input"
			  redirect_to path
		  end
	end

	def ride_params
		params.require(:ride).permit(:date, :time, :location)
	end
# def new
	# # 	redirect_to rides_paath
	#    render :new
	# end

	# def create
	# 	redirect_to rides_path
	# end
end
