class PetrolStation < ApplicationRecord

    has_and_belongs_to_many :users, :join_table => :favourite_stations

end
