class AddCascadeDeleteToRents < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :rents, :clients
    remove_foreign_key :rents, :cars

    add_foreign_key :rents, :clients, on_delete: :cascade
    add_foreign_key :rents, :cars, on_delete: :cascade
  end
end
