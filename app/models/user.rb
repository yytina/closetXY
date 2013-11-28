class User < ActiveRecord::Base

	attr_accessor :password

	has_many :looks_as_creator, class_name: "Look", inverse_of: :creator
	has_many :looks_as_owner, class_name: "Look", inverse_of: :owner

	has_many :closet_items

	def authenticate(password)
    self.password == password
  end
end

