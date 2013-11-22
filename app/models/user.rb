class User < ActiveRecord::Base
	has_many :looks_as_creator, class_name: "Look", inverse_of: :creator
  has_many :looks_as_owner, class_name: "Look", inverse_of: :owner

  has_many :closet_items
end
