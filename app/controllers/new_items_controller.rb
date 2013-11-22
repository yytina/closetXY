class NewItemsController < ApplicationController
  
  respond_to :json
  
  def index
  	#@user = User.find(params[:creator_id]) if params[:user_id]
  	@new_items = params[:id] ? NewItem.where('id in (?)', params[:id].split(","))  : NewItem.all


		#render json: @looks
	end

	def create
	end

	def update
	end

	def destroy
	end

end
