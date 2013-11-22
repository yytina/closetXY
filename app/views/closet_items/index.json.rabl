collection @closet_items

attributes :id, :user, :category

node :href do |closet_item|
  user_closet_item_url(@user, closet_item)
end

node :links do |closet_item|
  {
    user: user_url(@user)

  }
end