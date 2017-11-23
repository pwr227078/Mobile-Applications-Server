json.extract! car, :id, :description, :name, :brand, :model, :registration_number, :mileage, :fuel_type, :review, :oil_change, :notifications_allowed, :created_at, :updated_at
json.url car_url(car, format: :json)
