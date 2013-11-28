class ClosetItemsController < ApplicationController
  
  respond_to :json
  
  def index
  	@user = User.find(params[:user_id]) #if params[:user_id]
    closet_items = params[:id] ? @user.closet_items.find(params[:id].split(","))  : @user.closet_items

		top_clothing_items = closet_items.select{|closing_item| closing_item.category == "top"}
    bottom_clothing_items = closet_items.select{|closing_item| closing_item.category == "bottom"}
    outerwear_clothing_items = closet_items.select{|closing_item| closing_item.category == "outerwear"}
    accessory_clothing_items = closet_items.select{|closing_item| closing_item.category == "accessory"}

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
	end

	def mine
		@user = current_user
    closet_items = @user.closet_items

		top_clothing_items = closet_items.select{|closing_item| closing_item.category == "top"}
    bottom_clothing_items = closet_items.select{|closing_item| closing_item.category == "bottom"}
    outerwear_clothing_items = closet_items.select{|closing_item| closing_item.category == "outerwear"}
    accessory_clothing_items = closet_items.select{|closing_item| closing_item.category == "accessory"}

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
		

	end

	def create
		head ClosetItem.new(closet_item_params).save ? :created : :unprocessable_entity
	end

	def update
	end

	def destroy
	end

	protected

  def closet_items_params
    params.require( :closet_item ).permit( :category, :color, :material, :size, :user )
  end
end