class CreateCuisines < ActiveRecord::Migration[5.2]
  def change
    create_table :cuisines do |t|
      t.text :name
      t.text :image

      t.timestamps
    end
  end
end
