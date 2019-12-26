class RidesController < ApplicationController
	def index
		ride_count = Ride.count
        @count = ride_count
        @ride = Ride.all.includes(:driver)

	end
end
