class Doctor < ApplicationRecord
  has_and_belongs_to_many :services
  has_many :categories, through: :services
end
