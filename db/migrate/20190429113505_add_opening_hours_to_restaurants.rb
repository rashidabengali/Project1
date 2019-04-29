class AddOpeningHoursToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :opening_hours, :time
  end
end
