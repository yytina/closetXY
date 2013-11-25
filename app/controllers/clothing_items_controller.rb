class ClothingItemsController < ApplicationController
  
  respond_to :json
  
  def index
  	#@user = User.find(params[:creator_id]) if params[:user_id]
    
  	@clothing_items = params[:id] ? ClothingItem.where('id in (?)', params[:id].split(","))  : ClothingItem.all
	end

	def create
	end

	def update
	end

	def destroy
	end

end
