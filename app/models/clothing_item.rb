class ClothingItem < ActiveRecord::Base

	has_many :looks_as_top, class_name: "Look", inverse_of: :top, foreign_key: :top_id
	has_many :looks_as_bottom, class_name: "Look", inverse_of: :bottom, foreign_key: :bottom_id
	has_many :looks_as_outerwear, class_name: "Look", inverse_of: :outerwear, foreign_key: :outerwear_id
	has_many :looks_as_accessory, class_name: "Look", inverse_of: :accessory, foreign_key: :accessory_id

end
