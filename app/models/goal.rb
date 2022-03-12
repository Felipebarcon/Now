class Goal < ApplicationRecord
  belongs_to :activity
  belongs_to :user
  belongs_to :level
end
