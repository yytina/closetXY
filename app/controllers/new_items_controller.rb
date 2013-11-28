class NewItemsController < ApplicationController
  
  respond_to :json
  
  def index
  	#@user = User.find(params[:creator_id]) if params[:user_id]
  	new_items = params[:id] ? NewItem.where('id in (?)', params[:id].split(","))  : NewItem.all

  	top_clothing_items = new_items.select{|closing_item| closing_item.category == "top"}
    bottom_clothing_items = new_items.select{|closing_item| closing_item.category == "bottom"}
    outerwear_clothing_items = new_items.select{|closing_item| closing_item.category == "outerwear"}
    accessory_clothing_items = new_items.select{|closing_item| closing_item.category == "accessory"}

    data = {
    	categories: [
	    	{
	    		name: "top",
	    		clothing_items: top_clothing_items
	    	},
	    	{
	    		name: "bottom",
	    		clothing_items: bottom_clothing_items
	    	},
	    	{
	    		name: "outerwear",
	    		clothing_items: outerwear_clothing_items
	    	},
	    	{
	    		name: "accessory",
	    		clothing_items: accessory_clothing_items
	    	}

	    ]
	  }

		render json: data

		#render json: @looks
	end

	def create
	end

	def update
	end

	def destroy
	end

end
