class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash.alert = "User created"
			redirect_to admin_index_path
		else
			flash.alert = "Invalid Input"
			redirect_to new_user_path
		end
	end

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email_id, :contact_no)
	end

	def edit
		@user = User.find(params[:id])
	end

	def show
		@list = User.all
	end

	def destroy
		@user = User.destroy(params[:id])
		redirect_to users_dashboard_path
	end

	def index 
		@user_details = User.all
		render json: @user_details
	end
end
