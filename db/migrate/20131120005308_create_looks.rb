class CreateLooks < ActiveRecord::Migration
  def change
    create_table :looks do |t|
      t.string :title
      t.string :occasion
      t.integer :like

      t.integer :creator_id, index: true
      t.integer :owner_id, index: true

      t.integer :top_id, index: true
      t.integer :bottom_id, index: true
      t.integer :outerwear_id, index: true
      t.integer :accessory_id, index: true

      t.timestamps
    end
  end
end
