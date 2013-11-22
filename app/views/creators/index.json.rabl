object false

child @creators, object_root: false do
  attributes :id, :name
  node :href do |creator|
  	creator_url(creator)
	end

	node :links do |creator|
  	{
    	looks: creator_looks_url(creator)
  	}
	end
end