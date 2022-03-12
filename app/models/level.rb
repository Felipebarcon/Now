class Level < ApplicationRecord
  validates :name, presence: true
  validates :frequency, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 7 }
end
