class Doctor < ApplicationRecord
  has_secure_password

  has_and_belongs_to_many :services
  has_many :categories, through: :services
end
