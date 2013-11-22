collection @clothing_items

attributes :id, :type, :category, :color, :size, :material

node :href do |clothing_item|
  clothing_item_url(clothing_item)
end

node :links do |clothing_item|
  {
    
    looks: look_url(clothing_item.looks_as_top)  

  }
end