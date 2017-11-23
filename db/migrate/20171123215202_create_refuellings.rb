class CreateRefuellings < ActiveRecord::Migration[5.1]
  def change
    create_table :refuellings do |t|
      t.string :description
      t.decimal :total_price
      t.float :liters
      t.float :mileage
      t.datetime :datetime

      t.timestamps
    end
  end
end
