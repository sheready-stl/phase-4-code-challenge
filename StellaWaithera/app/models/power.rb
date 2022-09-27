class Power < ApplicationRecord
  validates :description, presence: true, length: { minimum: 20 }

  has_many :hero_power
  has_many :heroes, through: :hero_power
end
