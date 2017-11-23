class User < ApplicationRecord

  has_secure_password

  has_many :cars
  has_and_belongs_to_many :petrol_stations, :join_table => :favourite_stations

  validates :nickname, presence: true, length: { in: 3..20 }, uniqueness: true
  validates :mail, presence: true, email: true
  validates :password, presence: true, length: { minimum: 8 }

end
