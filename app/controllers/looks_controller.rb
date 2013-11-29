class LooksController < ApplicationController
  
  respond_to :json
  
  def index

  	#@clothing_item = User.find(params[:clothing_item_id]) if params[:clothing_item_id]
  	@looks = if params[:clothing_item_id] && @clothing_item = ClothingItem.where('id = ?', params[:clothing_item_id]).take
  		@clothing_item.looks_as_top+@clothing_item.looks_as_bottom+@clothing_item.looks_as_outerwear+@clothing_item.looks_as_accessory
  	elsif params[:id]
  		paramArray=params[:id].split(",")
  		if paramArray.length >1 then
  			Look.where('id in (?)', paramArray )
  		else
        new_items = [] 
        closet_items = []
  			look = Look.where('id in (?)', paramArray ).take
  			if look.top.type=="NewItem" then
  				new_items << look.top
  			else
  				closet_items << look.top
  			end

  			if look.bottom.type=="NewItem" then
  				new_items << look.bottom
  			else
  				closet_items << look.bottom
  			end

  			if look.outerwear.type=="NewItem" then
  				new_items << look.outerwear
  			else
  				closet_items << look.outerwear
  			end

  			if look.accessory.type=="NewItem" then
  				new_items << look.accessory
  			else
  				closet_items << look.accessory
  			end
  			
  			data = {
  				look:[look],
  				new_items:new_items,
  				closet_items:closet_items,
          comments: look.comments
  			}		
  			render json: data				
  		end

		else
			Look.all
		end



		#render json: @looks
	end

	

	def create
    look= Look.new(look_params)
    #Look.top=ClothingItem.where('id = ?', params[:top_id]).take
    head look.save ? :created : :unprocessable_entity
	end


	def update
	end

	def destroy
	end

  protected

  def look_params
    params.require( :look ).permit( :title, :top, :botoom, :outerwear, :accessory )
  end

end
