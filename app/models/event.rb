class Event < ApplicationRecord
  belongs_to :user
  has_many :users, through: :listings

  validates :description, :location, :start_date_time, :end_date_time, presence: true
end
