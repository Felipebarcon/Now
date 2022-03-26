class Activity < ApplicationRecord
  has_many :goals, dependent: :destroy
  has_many :events

  validates :name, presence: true
end
