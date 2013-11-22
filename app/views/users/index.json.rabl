object false

child @users, object_root: false do
  attributes :id, :name
  node :href do |user|
  	user_url(user)
	end

	node :links do |user|
  	{
    	closet_items: user_closet_items_url(user)
  	}
	end
end