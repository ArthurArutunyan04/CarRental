class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name, null: false
      t.string :email, null: false, unique: true
      t.string :phone_number, null: false, unique: true
      t.string :address, null: false

      t.timestamps
    end
  end
end
