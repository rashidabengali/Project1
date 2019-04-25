class ChangeRestaurantImageToArray < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :image
    add_column :restaurants, :images, :text, :array => true, :default => []
  end
end
