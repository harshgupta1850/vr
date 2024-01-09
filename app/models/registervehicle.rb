class Registervehicle < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :phonenumber, presence: true
  validates :vehiclenumber, presence: true
end
