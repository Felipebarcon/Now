class Activity < ApplicationRecord
  has_many :goals

  validates :type, presence: true
end
