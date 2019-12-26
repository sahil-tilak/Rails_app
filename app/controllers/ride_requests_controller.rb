class RideRequestsController < ApplicationController
	def index
		ride_request = RideRequest.where(ride_id: params["ride_id"])
		@ride_request = ride_request
    end
end
	