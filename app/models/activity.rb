class Activity < ApplicationRecord
  has_many :goals, dependent: :destroy

  validates :name, presence: true
end
