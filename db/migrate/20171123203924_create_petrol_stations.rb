class CreatePetrolStations < ActiveRecord::Migration[5.1]
  def change
    create_table :petrol_stations do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :postal_code
      t.decimal :pb95_price, :precision => 10, :scale => 2
      t.decimal :pb98_price, :precision => 10, :scale => 2
      t.decimal :on_price, :precision => 10, :scale => 2
      t.decimal :gas_price, :precision => 10, :scale => 2
      t.integer :likes, :default => 0
      t.integer :unlikes, :default => 0

      t.timestamps
    end
  end
end
