class Goal < ApplicationRecord
  belongs_to :activity
  belongs_to :user, optional: true
  belongs_to :level
  has_many :tasks
end
