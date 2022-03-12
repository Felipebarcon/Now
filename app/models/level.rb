class Level < ApplicationRecord
  validates :name, presence: true
  validates :frequency, numericality: { in: 1..7 }
end
