class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :user_id
      t.string :name, null: false
      t.text :discription, null: false
      t.integer :price, null: false
      t.string :image_id
      t.integer :category_id
      t.boolean :is_opened, default: true
      t.integer :status

      t.timestamps
    end
    add_foreign_key :products, :users
    add_foreign_key :products, :categories
  end
end
