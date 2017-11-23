json.extract! petrol_station, :id, :name, :street, :city, :postal_code, :pb95_price, :pb98_price, :on_price, :gas_price, :likes, :unlikes, :created_at, :updated_at
json.url petrol_station_url(petrol_station, format: :json)
