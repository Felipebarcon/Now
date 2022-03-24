class Event < ApplicationRecord
  belongs_to :user
  has_many :users, through: :listings

  validates :description, :location, :start_date_time, :end_date_time, presence: true
  validate :event_time_valid?

  private

  def event_time_valid?
    if start_date_time < DateTime.now
      errors.add(:start_date_time, "must be after now")
    elsif end_date_time < DateTime.now
      errors.add(:end_date_time, "must be after now")
    elsif end_date_time < start_date_time
      errors.add(:end_date_time, "must be after the start time")
    else
      return true
    end
  end
end
