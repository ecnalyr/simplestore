class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :brief_description
      t.text :full_description
      t.string :meta_keywords
      t.string :image_link
      t.string :sku
      t.decimal :price

      t.timestamps
    end
  end
end
