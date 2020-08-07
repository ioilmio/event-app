class Event < ApplicationRecord
  scope :upcoming, -> { where('date > ?', Date.today) }
  scope :past, -> { where('date < ?', Date.today) }

  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :location, presence: true

  belongs_to :creator, foreign_key: :user_id, class_name: 'User'

  has_many :attendances, foreign_key: :attended_event_id, source: :event
  has_many :attendees, through: :attendances, class_name: 'User', source: :attendee
end
