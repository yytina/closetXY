
object false
child @clothing_items, object_root: false do

attributes :id, :type, :category, :color, :size, :material

node :href do |clothing_item|
  clothing_item_url(clothing_item)
end

node :links do |clothing_item|
  {
    
    looks: clothing_item_looks_url(clothing_item)

  }
end

end