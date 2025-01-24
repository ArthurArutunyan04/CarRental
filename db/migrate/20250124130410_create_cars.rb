class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :brand, null: false
      t.string :model, null: false
      t.integer :release_year, null: false
      t.decimal :price_per_day, precision: 10, scale: 2, null: false, default: 1

      t.timestamps
    end
  end
end
