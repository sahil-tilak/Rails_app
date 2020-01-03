class RidesController < ApplicationController
	def index
		ride_count = Ride.count
        @count = ride_count
        @ride = Ride.all.includes(:driver)

	end
	# def new
	# # 	redirect_to rides_paath
	#    render :new
	# end

	# def create
	# 	redirect_to rides_path
	# end
end
