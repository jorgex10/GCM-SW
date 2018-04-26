class UsersController < ApplicationController
	
	before_action :display_user, only: [:edit, :show, :update]

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		if @user
			redirect_to user_path(@user)
		end
	end

	def edit
	end

	def show
	end

	def update
		@user.update(user_params)
		redirect_to user_path(@user)
	end

	private
		def user_params
			params.require(:user).permit(:first_name, :last_name, :address, :phone)
		end

		def display_user
			@user = User.find(params[:id])
		end

end