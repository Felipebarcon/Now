class Event < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  has_many :listings
  has_many :users, through: :listings

  validates :description, :address, :start_date_time, :end_date_time, presence: true
  validate :event_time_valid?

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

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
