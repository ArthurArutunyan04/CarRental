class CreateRents < ActiveRecord::Migration[7.0]
  def change
    create_table :rents do |t|
      t.datetime :rental_date, null: false
      t.datetime :return_date, null: false
      t.decimal :rental_cost, precision: 10, scale: 2, null: false, default: 0
      t.references :client, null: false, foreign_key: true
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
