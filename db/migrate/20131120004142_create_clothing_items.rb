class CreateClothingItems < ActiveRecord::Migration
  def change
    create_table :clothing_items do |t|
    	t.string :type

      t.string :category
      t.string :color
      t.string :size
      t.string :material

      t.references :user
      t.string :product_id
      t.decimal :price, :precision => 10, :scale => 2

      t.timestamps
    end
  end
end
