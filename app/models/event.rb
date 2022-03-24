class Event < ApplicationRecord
  belongs_to :user
  has_many :users, through: :listings
end
