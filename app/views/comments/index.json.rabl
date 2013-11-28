collection @comments

attributes :id, :author, :body, :look, :created_at, :updated_at

node :href do |comment|
  look_comment_url(@look, comment)
end

node :links do |comment|
  {
    look: look_url(comment.look)
  }
end