User.destroy_all
ClosetItem.destroy_all
NewItem.destroy_all
Look.destroy_all
Comment.destroy_all

users=User.create([
	{
		name: "Jack",
		height: 180,
		body_type: "athelatic"
	},
	{
		name: "Bob",
		height: 175,
		body_type: "thin"
	},
	{
		name: "Tom",
		height: 185,
		body_type: "chubby"
	},
])

closet_items = ClosetItem.create([
	{
		user:users[0],
		category: "top",
		color: "black",
		size:"l",
		material:"wool"
	},
	{
		user:users[0],
		category: "pants",
		color: "blue",
		size:"l",
		material:"cotton"
	},
	{
		user:users[1],
		category: "outerwear",
		color: "gray",
		size:"m",
		material:"velvet"
	},
	{
		user:users[1],
		category: "accessory",
		color: "brown",
		size:"u",
		material:"leather"
	},
	{
		user:users[0],
		category: "top",
		color: "green",
		size:"l",
		material:"linen"
	},
	{
		user:users[0],
		category: "outerwear",
		color: "brown",
		size:"l",
		material:"leather"
	}
])
new_items = NewItem.create([
	{
		product_id:"SS13TOP1",
		price:50.5,
		category: "top",
		color: "blue",
		size:"l",
		material:"cotton"
	},
	{
		product_id:"SS13BOTTOM1",
		price:40.4,
		category: "bottom",
		color: "green",
		size:"l",
		material:"cotton"
	},
	{
		product_id:"SS13OUT1",
		price:100.4,
		category: "outerwear",
		color: "gray",
		size:"m",
		material:"velvet"
	},
	{
		product_id:"SS13ACC1",
		price:20.2,
		category: "accessory",
		color: "black",
		size:"u",
		material:"leather"
	},
	{
		product_id:"SS13OUT1",
		price:20.2,
		category: "top",
		color: "black",
		size:"u",
		material:"wool"
	},
	{
		product_id:"SS13ACC2",
		price:20.2,
		category: "accessory",
		color: "gunmetal",
		size:"u",
		material:"metal"
	}
])
looks = Look.create([
	{
		title:"clean casual mood",
		occasion: "everyday",
		like: 3,
		creator: users[0],
		owner: users[1],
		top: new_items[0],
		bottom:new_items[1],
		outerwear: closet_items[2],
		accessory: closet_items[3]
	},
	{
		title:"mischievous mood",
		occasion: "everyday",
		like: 3,
		creator: users[1],
		owner: users[0],
		top: closet_items[0],
		bottom:new_items[1],
		outerwear: closet_items[2],
		accessory: closet_items[5]
	},
	{
		title:"marine boy",
		occasion: "holiday",
		like: 5,
		creator: users[1],
		owner: users[0],
		top: closet_items[0],
		bottom:closet_items[1],
		outerwear: new_items[2],
		accessory: new_items[3]
	},
	{
		title:"marine boy2",
		occasion: "holiday",
		like: 5,
		creator: users[1],
		owner: users[0],
		top: closet_items[0],
		bottom:closet_items[1],
		outerwear: new_items[2],
		accessory: new_items[3]
	},
	{
		title:"standard formal wear",
		occasion: "everyday",
		like: 3,
		creator: users[0],
		owner: users[1],
		top: new_items[0],
		bottom:new_items[1],
		outerwear: closet_items[4],
		accessory: closet_items[3]
	}
])

comments = Comment.create([
	{
		body: "The look is good for cloudy day.",
		author: users[1],
		look: looks[0]
	},
	{
		body: "The look is good for sunny day.",
		author: users[0],
		look: looks[1]
	}
])


