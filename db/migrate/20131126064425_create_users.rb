class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.boolean :is_admin
      t.string :name
      t.string :email
      t.string :password
      t.integer :height
      t.string :body_type

      t.timestamps
    end
  end
end
