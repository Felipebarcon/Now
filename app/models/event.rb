class Event < ApplicationRecord
  belongs_to :user, dependent: :destroy
end
