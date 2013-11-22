class ClothingItem < ActiveRecord::Base


	has_many :looks_as_top, class_name: "Look", inverse_of: :top
	has_many :looks_as_bottom, class_name: "Look", inverse_of: :bottom
	has_many :looks_as_outerwear, class_name: "Look", inverse_of: :outerwear
	has_many :looks_as_accessory, class_name: "Look", inverse_of: :accessory

end
