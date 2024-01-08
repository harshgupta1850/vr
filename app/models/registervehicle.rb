class Registervehicle < ApplicationRecord
  has_many :parkings, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :phonenumber, presence: true
  validates :vehiclenumber, presence: true
end
