class Event < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  has_many :listings
  has_many :users, through: :listings

  validates :description, :address, :start_time, :end_time, presence: true
  validate :event_time_valid?

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :description, :address, :start_time, :end_time, presence: true
  validate :event_time_valid?

  default_scope -> { order(:start_time) }

  def time
    "#{start_time.strftime('%I:%M %p')} - #{end_time.strftime('%I:%M %p')}"
  end

  def multi_days?
    (end_time.to_date - start_time.to_date).to_i >= 1
  end

  private

  def event_time_valid?
    if start_time < DateTime.now
      errors.add(:start_time, "must be after now")
    elsif end_time < DateTime.now
      errors.add(:end_time, "must be after now")
    elsif end_time < start_time
      errors.add(:end_time, "must be after the start time")
    else
      return true
    end
  end

end
