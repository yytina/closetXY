class Look < ActiveRecord::Base
  belongs_to :creator, class_name: "User", inverse_of: :looks_as_creator
  belongs_to :owner, class_name: "User", inverse_of: :looks_as_owner

	belongs_to :top, class_name: "ClothingItem", inverse_of: :looks_as_top
  belongs_to :bottom, class_name: "ClothingItem", inverse_of: :looks_as_bottom
  belongs_to :outerwear, class_name: "ClothingItem", inverse_of: :looks_as_outerwear
  belongs_to :accessory, class_name: "ClothingItem", inverse_of: :looks_as_accessory

  has_many :comments, dependent: :destroy
end
