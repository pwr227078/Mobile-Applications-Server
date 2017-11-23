class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :description
      t.string :name
      t.string :brand
      t.string :model
      t.string :registration_number
      t.float :mileage
      t.string :fuel_type
      t.date :review
      t.date :oil_change
      t.boolean :notifications_allowed

      t.timestamps
    end
  end
end
