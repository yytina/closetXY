collection @looks

attributes :id, :creator, :owner, :top, :bottom, :outerwear, :accessory, :comment

node :href do |look|
  @creator ? creator_look_url(@creator, look) : look_url(look)
end

node :links do |look|
  {
    creator: creator_url(look.creator),
    comments: look_comments_url(look)
  }
end