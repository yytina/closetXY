collection @new_items

attributes :id, :type, :category, :color, :size, :material

node :href do |new_item|
  clothing_item_url(new_item)
end

node :links do |new_item|
  {
    
    looks: look_url(new_item.looks_as_top)  

  }
end