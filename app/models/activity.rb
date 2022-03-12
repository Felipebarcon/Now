class Activity < ApplicationRecord
  belongs_to :goals

  validates :type, presence: true
end
