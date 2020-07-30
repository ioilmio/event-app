class Event < ApplicationRecord
  scope :upcoming, -> { where('date > ?', Date.today) }
  scope :past, -> { where('date < ?', Date.today) }

  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true

  has_many :attendees, through: :attendance
  belongs_to :creator, class_name: 'User'
end
