class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, index: true
      t.string :email
      t.string :salt
      t.string :fish
      t.string :code
      t.string :expires_at
      t.string :timestamp
      t.integer :height
      t.string :body_type

      t.timestamps
    end
  end
end
