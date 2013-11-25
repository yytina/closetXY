class LooksController < ApplicationController
  
  respond_to :json
  
  def index
  	#@clothing_item = User.find(params[:clothing_item_id]) if params[:clothing_item_id]
  	@looks = if params[:clothing_item_id] && @clothing_item = ClothingItem.where('id = ?', params[:clothing_item_id]).take
  		@clothing_item.looks_as_top+@clothing_item.looks_as_bottom+@clothing_item.looks_as_outerwear+@clothing_item.looks_as_accessory
  	elsif params[:id]
  		Look.where('id in (?)', params[:id].split(","))
		else
			Look.all
		end

		#render json: @looks
	end

	def create
	end

	def update
	end

	def destroy
	end

end
