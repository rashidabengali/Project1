class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.text :name
      t.text :location
      t.text :image
      t.text :specialities

      t.timestamps
    end
  end
end
