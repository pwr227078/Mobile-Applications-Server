class CreateFavouriteStations < ActiveRecord::Migration[5.1]
  def change
    create_table :favourite_stations, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :petrol_station, index: true
    end
  end
end
