class CreateTrackFoodSupplies < ActiveRecord::Migration
  def change
    create_table :track_food_supplies do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.integer :quantity, null: false

      t.timestamps
    end
  end
end
