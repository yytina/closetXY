class ClothingItemsController < ApplicationController
  
  respond_to :json
  
  def index
  	#@user = User.find(params[:creator_id]) if params[:user_id]
    clothing_items = params[:id] ? ClothingItem.where('id in (?)', params[:id].split(","))  : ClothingItem.all
    if params[:id] then
    	@clothing_items=ClothingItem.where('id in (?)', params[:id].split(","))
    else

						  new_items = clothing_items.select{|closing_item| closing_item.type == "NewItem"}
						  closet_items = clothing_items.select{|closing_item| closing_item.type == "ClosetItem"}
						  new_top_items= new_items.select{|item| item.category == "top"}
						  new_bottom_items= new_items.select{|item| item.category == "bottom"}
						  new_outerwear_items= new_items.select{|item| item.category == "outerwear"}
						  new_accessory_items= new_items.select{|item| item.category == "accessory"}
						  closet_top_items= closet_items.select{|item| item.category == "top"}
						  closet_bottom_items= closet_items.select{|item| item.category == "bottom"}
						  closet_outerwear_items= closet_items.select{|item| item.category == "outerwear"}
						  closet_accessory_items= closet_items.select{|item| item.category == "accessory"}

						  data = {
					    	new_categories: [
						    	{
						    		name: "top",
						    		clothing_items: new_top_items
						    	},
						    	{
						    		name: "bottom",
						    		clothing_items: new_bottom_items
						    	},
						    	{
						    		name: "outerwear",
						    		clothing_items: new_outerwear_items
						    	},
						    	{
						    		name: "accessory",
						    		clothing_items: new_accessory_items
						    	}

						    ],
						    closet_categories: [
						    	{
						    		name: "top",
						    		clothing_items: closet_top_items
						    	},
						    	{
						    		name: "bottom",
						    		clothing_items: closet_bottom_items
						    	},
						    	{
						    		name: "outerwear",
						    		clothing_items: closet_outerwear_items
						    	},
						    	{
						    		name: "accessory",
						    		clothing_items: closet_accessory_items
						    	}

						    ]

						  }				  

							render json: data
    end
 
  	
	end

	def create
	end

	def update
	end

	def destroy
	end

end
