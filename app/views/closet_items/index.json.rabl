object false
child @closet_items, object_root: false do

	attributes :id, :user, :category, :color, :size, :material

	node :href do |closet_item|
	  user_closet_item_url(@user, closet_item)
	end

	node :links do |closet_item|
	  {
	    user: user_url(@user),
	    looks: clothing_item_looks_url(closet_item)

	  }
	end
end