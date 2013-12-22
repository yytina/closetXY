class AddImageToClothingItems < ActiveRecord::Migration
  def change
    add_column :clothing_items, :image, :string
  end
end
