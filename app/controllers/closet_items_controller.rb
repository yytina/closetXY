class ClosetItemsController < ApplicationController
  
  respond_to :json
  
  def index
  	@user = User.find(params[:user_id]) #if params[:user_id]
    @closet_items = params[:id] ? @user.closet_items.find(params[:id].split(","))  : @user.closet_items

		#render json: @users
	end

	def create
	end

	def update
	end

	def destroy
	end

end
