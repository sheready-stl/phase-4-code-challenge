class HeroPower < ApplicationRecord
  belongs_to :hero
  belongs_to :power
  validates :strength, inclusion: ["Strong", "Weak", "Average"]
end
