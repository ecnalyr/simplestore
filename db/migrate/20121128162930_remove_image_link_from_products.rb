class RemoveImageLinkFromProducts < ActiveRecord::Migration
  def up
    remove_column :products, :image_link
  end

  def down
    add_column :products, :image_link, :string
  end
end
